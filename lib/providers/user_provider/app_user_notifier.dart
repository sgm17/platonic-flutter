import 'package:platonic/domains/university_repository/university_repository.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/providers/auth_provider/providers.dart';
import 'package:platonic/providers/error_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class AppUserNotifier extends StateNotifier<AppUser> {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final User? user;
  final Ref ref;

  AppUserNotifier(this.ref, this.user) : super(AppUser.emptyUser) {
    userSignInBackend();
  }

  Future<void> userSignInBackend() async {
    if (user != null) {
      try {
        // Get the tokenId
        final tokenId = ref.read(tokenIdProvider);

        if (tokenId != null) {
          // Get the profile from the backend
          final appUser =
              await ref.read(userViewmodelProvider).getAppUserProfile();

          if (appUser != null) {
            state = appUser;
          }
        } else {
          state = AppUser.emptyUser;
        }
      } on ErrorApp catch (e) {
        ref.read(splashErrorProvider.notifier).state = e;
      } catch (e) {
        print(e);
      }
    }
  }

  Future<void> userRegisterDetailInBackend() async {
    if (user != null) {
      try {
        final newUser = state.copyWith(uid: user!.uid, email: user!.email!);

        final createdUser = await ref
            .read(userViewmodelProvider)
            .postCreateUserRegisterDetail(appUser: newUser);

        state = createdUser;
      } on ErrorApp catch (e) {
        ref.read(authErrorProvider.notifier).state = e;
      } catch (e) {
        print(e);
      }
    }
  }

  Future<void> updateProfile() async {
    try {
      await ref
          .read(userViewmodelProvider)
          .postUpdateUserRegisterDetail(appUser: state);
    } on ErrorApp catch (e) {
      ref.read(profileErrorProvider.notifier).state = e;
    } catch (e) {
      print(e);
    }
  }

  Future<void> userSignInWithEmailAndPassword() async {
    try {
      final email = ref.read(userLoginProvider).email!;
      final password = ref.read(userLoginProvider).password!;

      // Sign in with email and password
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      // No need to fetch user profile from backend server here

      // Initialize onUserChanges()
      ref.read(firebaseUserProvider.notifier).initialize();
    } on FirebaseAuthException catch (e) {
      final errorApp = ErrorApp(code: e.code.split('-').join(""));
      ref.read(authErrorProvider.notifier).state = errorApp;
    } catch (e) {
      print(e);
    }
  }

  Future<void> userRegisterWithEmailAndPassword() async {
    try {
      final email = ref.read(userRegisterProvider).email!;
      final password = ref.read(userRegisterProvider).password!;

      // Create account with email and password
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // Send email verification after register complete
      await FirebaseAuth.instance.currentUser?.sendEmailVerification();

      // Initialize onUserChanges()
      ref.read(firebaseUserProvider.notifier).initialize();
    } on FirebaseAuthException catch (e) {
      final errorApp = ErrorApp(code: e.code.split('-').join(""));
      ref.read(authErrorProvider.notifier).state = errorApp;
    } catch (e) {
      print(e);
    }
  }

  Future<void> userRegisterGoogle() async {
    try {
      final googleSignIn = GoogleSignIn();
      final googleAccount = await googleSignIn.signIn();
      final googleAuth = await googleAccount!.authentication;

      // Create a credential from the Google sign-in
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with the credential
      await FirebaseAuth.instance.signInWithCredential(credential);

      // Initialize onUserChanges()
      ref.read(firebaseUserProvider.notifier).initialize();
    } on FirebaseAuthException catch (e) {
      final errorApp = ErrorApp(code: e.code.split('-').join(""));
      ref.read(authErrorProvider.notifier).state = errorApp;
    } catch (e) {
      print(e);
    }
  }

  Future<void> userRegisterApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName
        ],
      );

      // Create a credential from the Apple sign-in
      final credential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      // Sign in with the credential
      await FirebaseAuth.instance.signInWithCredential(credential);

      // Initialize onUserChanges()
      ref.read(firebaseUserProvider.notifier).initialize();
    } on FirebaseAuthException catch (e) {
      final errorApp = ErrorApp(code: e.code.split('-').join(""));
      ref.read(authErrorProvider.notifier).state = errorApp;
    } catch (e) {
      print(e);
    }
  }

  // Create setters
  void setUid(String uid) => state = state.copyWith(uid: uid);
  void setName(String name) => state = state.copyWith(name: name);
  void setEmail(String email) => state = state.copyWith(email: email);
  void setSex(Sex sex) => state = state.copyWith(sex: sex);
  void setAge(int age) => state = state.copyWith(age: age);
  void setUniversity(University university) => state = state.copyWith(
      university: university,
      universityId: university.id,
      faculty: null,
      study: null);
  void setFaculty(Faculty faculty) => state =
      state.copyWith(faculty: faculty, facultyId: faculty.id, study: null);
  void setStudy(Study study) =>
      state = state.copyWith(study: study, studyId: study.id);
  void setMeetStatus() => state = state.copyWith(
      meetStatus: state.meetStatus != null ? !state.meetStatus! : false);
  void setSexToMeet(Sex sexToMeet) =>
      state = state.copyWith(sexToMeet: sexToMeet);
  void setUniversityToMeet(University universityToMeet) =>
      state = state.copyWith(
          universityToMeet: universityToMeet,
          universityToMeetId: universityToMeet.id,
          facultiesToMeet: null);
  void setFacultiesToMeet(List<Faculty> faculties) =>
      state = state.copyWith(facultiesToMeet: faculties);

  // Update setters
  void setProfileImage(String profileImage) =>
      state = state.copyWith(profileImage: profileImage);
  void setMeetImage(String meetImage) =>
      state = state.copyWith(meetPicture: meetImage);
}
