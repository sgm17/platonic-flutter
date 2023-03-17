import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/providers/error_provider/auth_error_provider.dart';
import 'package:platonic/providers/auth_provider/providers.dart';
import 'package:platonic/providers/error_provider/splash_error_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'dart:async';

class UserNotifier extends StateNotifier<AsyncValue<AppUser>> {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final Ref ref;

  String? tokenId;

  StreamSubscription<User?>? idTokenListener;
  StreamSubscription<String?>? cloudTokenListener;
  StreamSubscription<User?>? authStateListener;

  UserNotifier(this.ref) : super(const AsyncValue<AppUser>.loading()) {
    initialize();
  }

  @override
  void dispose() {
    idTokenListener?.cancel();
    cloudTokenListener?.cancel();
    authStateListener?.cancel();
    super.dispose();
  }

  Future<void> initialize() async {
    authStateListener =
        firebaseAuth.authStateChanges().listen(onAuthStateChanges);

    final user = firebaseAuth.currentUser;

    if (user != null) {
      idTokenListener = firebaseAuth.idTokenChanges().listen(onTokenIdChanges);
      cloudTokenListener =
          firebaseMessaging.onTokenRefresh.listen(onCloudTokenChanges);
    }
  }

  Future<void> onAuthStateChanges(User? user) async {
    if (user != null) {
      try {
        // User instance of firebase
        final tokenId = await user.getIdToken();

        // Get the profile from the backend
        final appUser = await ref
            .read(userViewmodelProvider)
            .getAppUserProfile(tokenId: tokenId);

        if (appUser == null) {
          // Use temporal user until finishes the register
          state = const AsyncValue.data(AppUser.emptyUser);
        } else {
          // State the preferences from the user
          ref.read(userRegisterDetailProvider.notifier).state = appUser;

          // State the user from the backend server
          state = AsyncValue.data(appUser);
        }

        idTokenListener ??=
            firebaseAuth.idTokenChanges().listen(onTokenIdChanges);
        cloudTokenListener ??=
            firebaseMessaging.onTokenRefresh.listen(onCloudTokenChanges);
      } on ErrorApp catch (e) {
        ref.read(splashErrorProvider.notifier).state = e;
      } catch (e) {
        state = AsyncValue.error(e, StackTrace.current);
      }
    } else {
      state = const AsyncValue.loading();
    }
  }

  Future<void> onTokenIdChanges(User? user) async {
    final token = await user?.getIdToken();

    if (token != null) {
      tokenId = token;
    }
  }

  Future<void> onCloudTokenChanges(String? cloudToken) async {
    final cloudToken = await firebaseMessaging.getToken();

    if (cloudToken != null) {
      try {
        await ref
            .read(userViewmodelProvider)
            .postUpdateCloudToken(cloudToken: cloudToken);
      } on ErrorApp catch (e) {
        ref.read(splashErrorProvider.notifier).state = e;
      } catch (e) {
        state = AsyncValue.error(e, StackTrace.current);
      }
    }
  }

  Future<void> userRegisterDetailInBackend() async {
    final user = firebaseAuth.currentUser;

    if (user != null) {
      try {
        // Update with the uid and the email
        ref.read(userRegisterDetailProvider.notifier).state = ref
            .read(userRegisterDetailProvider)
            .copyWith(uid: user.uid, email: user.email!);

        // Post the user to the backend server
        final AppUser appUser = await ref
            .read(userViewmodelProvider)
            .postCreateUserRegisterDetail();

        state = AsyncValue.data(appUser);

        idTokenListener ??=
            firebaseAuth.idTokenChanges().listen(onTokenIdChanges);
        cloudTokenListener ??=
            firebaseMessaging.onTokenRefresh.listen(onCloudTokenChanges);
      } on ErrorApp catch (e) {
        ref.read(authErrorProvider.notifier).state = e;
      } catch (e) {
        state = AsyncValue.error(e, StackTrace.current);
      }
    } else {
      state = const AsyncValue.loading();
    }
  }

  Future<void> userSignInWithEmailAndPassword() async {
    try {
      final email = ref.read(userLoginProvider).email!;
      final password = ref.read(userLoginProvider).password!;

      // Sign in with email and password
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      // No need to fetch user profile from backend server here

      // Fire method onAuthStateChanges(User? user)
    } on FirebaseAuthException catch (e) {
      final errorApp = ErrorApp(code: e.code.split('-').join(""));
      ref.read(authErrorProvider.notifier).state = errorApp;
    }
  }

  Future<void> userRegisterWithEmailAndPassword() async {
    try {
      final email = ref.read(userRegisterProvider).email!;
      final password = ref.read(userRegisterProvider).password!;

      // Create account with email and password
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      // Send email verification after register complete
      await firebaseAuth.currentUser?.sendEmailVerification();

      // Fire method onAuthStateChanges(User? user)
    } on FirebaseAuthException catch (e) {
      final errorApp = ErrorApp(code: e.code.split('-').join(""));
      ref.read(authErrorProvider.notifier).state = errorApp;
    }
  }

  // Doesn't throw exceptions
  Future<void> logoutUser() async => await firebaseAuth.signOut();
}
