import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/meet_settings_repository/src/models/meet_settings_model.dart';
import 'package:platonic/providers/auth_provider/login_provider.dart';
import 'package:platonic/providers/auth_provider/register_provider.dart';
import 'package:platonic/providers/meet_settings_provider/meet_settings_provider.dart';
import 'package:platonic/providers/register_detail_provider/register_detail_provider.dart';
import 'package:platonic/providers/shared_preferences_provider/shared_preferences_provider.dart';
import 'package:platonic/providers/user_provider/user_provider.dart';
import '../../../../domain/user_repository/src/models/models.dart';
import 'dart:convert';
import 'dart:async';

class UserNotifier extends StateNotifier<AsyncValue<AppUser>> {
  final Ref ref;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

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
      // User logged in and registered in backend
      final tokenId = await user.getIdToken();

      try {
        final AppUser? appUser = await ref
            .read(userViewmodelProvider)
            .loginAndRetrieveProfile(tokenId: tokenId);

        if (appUser == null) {
          // Use temporal user until finishes the register
          state = const AsyncValue.data(AppUser.emptyUser);
        } else {
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
    final tokenId = await user?.getIdToken();

    if (tokenId == null) return;

    print('TokenId update state: $tokenId');

    state = state.when(
      data: (appUser) {
        final updatedAppUser = appUser.copyWith(tokenId: tokenId);

        return AsyncData(updatedAppUser);
      },
      loading: () => const AsyncValue.loading(),
      error: (error, stackTrace) => AsyncError(error, stackTrace),
    );
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

  Future<void> userRegisterDetailAndMeetSettingsInBackend() async {
    final user = firebaseAuth.currentUser;

    if (user != null) {
      try {
        final registerDetailState = ref.watch(registerDetailProvider);
        final meetSettingsState = ref.watch(meetSettingsProvider);

        // No problem if no cloudToken, it will get later
        final cloudToken = await firebaseMessaging.getToken();

        // tokenId will not be null and usefull for backend server
        final tokenId = await user.getIdToken();

        final UserBackendRegister userBackendRegister = UserBackendRegister(
            uid: user.uid,
            cloudToken: cloudToken,
            name: registerDetailState.name!,
            age: registerDetailState.age!,
            sex: registerDetailState.sex,
            university: registerDetailState.university!,
            faculty: registerDetailState.faculty!,
            study: registerDetailState.study!,
            meetSettings: meetSettingsState);

        final AppUser appUser = await ref
            .watch(userViewmodelProvider)
            .registerAndRetrieveProfile(
                tokenId: tokenId, userBackendRegister: userBackendRegister);

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

  Future<void> storeMeetSettingsSharedPreferences() async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);

    final meetSettingsState = ref.read(meetSettingsProvider);

    final json = jsonEncode(meetSettingsState.toJson());

    await sharedPreferences.setString(MEET_SETTINGS_KEY, json);
  }

  Future<void> userSignInWithEmailAndPassword() async {
    try {
      final email = ref.watch(userLoginProvider).email!;
      final password = ref.watch(userLoginProvider).password!;

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
}
