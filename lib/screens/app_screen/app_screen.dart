import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/providers/shared_preferences_provider/first_time_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/auth_screen/auth_screen.dart';
import 'package:platonic/screens/home_screen/home_screen.dart';
import 'package:platonic/screens/register_detail_screen/register_detail_screen.dart';
import 'package:platonic/screens/start_screen/start_screen.dart';
import 'package:platonic/screens/verify_screen/verify_screen.dart';

class AppScreen extends ConsumerStatefulWidget {
  const AppScreen({super.key});

  @override
  AppScreenState createState() => AppScreenState();
}

class AppScreenState extends ConsumerState<AppScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(milliseconds: 2000), () => FlutterNativeSplash.remove());
  }

  Widget buildAppBody() {
    final appUserState = ref.watch(appUserProvider);
    final firebaseUserState = ref.watch(firebaseUserProvider);

    if (firebaseUserState == null) {
      return const AuthScreen();
    } else if (appUserState.id == AppUser.emptyUser.id) {
      return const RegisterDetailScreen();
    } else if (firebaseUserState.emailVerified == false &&
        appUserState.id != AppUser.emptyUser.id) {
      return const VerifyScreen();
    } else {
      // User in the backend
      final firstTimeState = ref.watch(firstTimeProvider);

      if (firstTimeState == true) {
        // Redirect to the StartScreen
        return const StartScreen();
      } else {
        // Not the first time
        return const HomeScreen();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildAppBody();
  }
}
