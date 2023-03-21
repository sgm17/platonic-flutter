import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/providers/auth_provider/providers.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class UserNotifier extends StateNotifier<AsyncValue<AppUser>> {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
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

  Future<void> register() async {
    await firebaseMessaging.requestPermission();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification(message);
    });
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
        final createdUser = ref
            .read(userRegisterDetailProvider)
            .copyWith(uid: user.uid, email: user.email!);

        // Update with the uid and the email
        ref.read(userRegisterDetailProvider.notifier).state = createdUser;

        // Post the user to the backend server
        final AppUser appUser = await ref
            .read(userViewmodelProvider)
            .postCreateUserRegisterDetail(appUser: createdUser);

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

  Future<void> updateProfile() async {
    try {
      final user = ref.read(userRegisterDetailProvider);
      final updatedUser = await ref
          .read(userViewmodelProvider)
          .postUpdateUserRegisterDetail(appUser: user);
      state = AsyncValue.data(updatedUser);
    } on ErrorApp catch (e) {
      ref.read(profileErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
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

      // Send email verification after register complete
      await firebaseAuth.currentUser?.sendEmailVerification();

      // Fire method onAuthStateChanges(User? user)
    } on FirebaseAuthException catch (e) {
      final errorApp = ErrorApp(code: e.code.split('-').join(""));
      ref.read(authErrorProvider.notifier).state = errorApp;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> showNotification(RemoteMessage message) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails('your channel id', 'your channel name',
            channelDescription: 'your channel description',
            importance: Importance.max,
            priority: Priority.high,
            ticker: 'ticker');

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      message.notification!.title,
      message.notification!.body,
      platformChannelSpecifics,
      payload: message.data.toString(),
    );
  }

  // Doesn't throw exceptions
  Future<void> logoutUser() async => await firebaseAuth.signOut();

  void uploadProfileImage({required String profileImage}) {
    state = state.when(
        data: (data) {
          return AsyncValue.data(data.copyWith(profileImage: profileImage));
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: () => const AsyncValue.loading());
  }
}
