import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/providers/auth_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'dart:async';

class UserNotifier extends StateNotifier<AsyncValue<AppUser>> {
  final Ref ref;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

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
      } catch (e) {
        state = AsyncValue.error(e, StackTrace.current);
      }
    } else {
      state = const AsyncValue.loading();
    }
  }

  Future<void> onTokenIdChanges(User? user) async {
    final token = await user?.getIdToken();

    if (token == null) return;

    // print('tokenId update state: $token');

    tokenId = token;
  }

  Future<void> onCloudTokenChanges(String? cloudToken) async {
    final tokenId = await firebaseAuth.currentUser?.getIdToken();

    if (tokenId == null) return;

    if (cloudToken != null) {
      final bool result = await ref
          .watch(userViewmodelProvider)
          .updateCloudToken(tokenId: tokenId, cloudToken: cloudToken);
      print('Cloud token update state: $result');
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
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> userRegisterWithEmailAndPassword() async {
    try {
      final email = ref.read(userRegisterProvider).email!;
      final password = ref.read(userRegisterProvider).password!;

      // Create account with email and password
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      // Fire method onAuthStateChanges(User? user)
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> logoutUser() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
