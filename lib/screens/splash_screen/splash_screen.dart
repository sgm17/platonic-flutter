import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/providers/shared_preferences_provider/shared_preferences_provider.dart';
import 'package:platonic/providers/error_provider/splash_error_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/auth_screen/auth_screen.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/screens/home_screen/home_screen.dart';
import 'package:platonic/screens/register_detail_screen/register_detail_screen.dart';
import 'package:platonic/screens/start_screen/start_screen.dart';
import 'package:platonic/screens/verify_screen/verify_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  bool splashState = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(seconds: 2), () => setState(() => splashState = true));
  }

  bool getFirstTimeUsingApp() {
    final sharedPreferences = ref.read(sharedPreferencesProvider);

    final firstTimeUsingAppp =
        sharedPreferences.getBool(FIRST_TIME_USING_APP_KEY);

    return firstTimeUsingAppp ?? true;
  }

  @override
  Widget build(BuildContext context) {
    final splashErrorState = ref.watch(splashErrorProvider);

    final appUserState = ref.watch(appUserProvider);
    final firebaseUserState = ref.watch(firebaseUserProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (splashErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: splashErrorState.code,
                ));

        ref.read(splashErrorProvider.notifier).state = null;
      }
    });

    if (splashState == false) {
      return Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 170, maxHeight: 170),
              child: Image.asset('assets/images/splash_image.png',
                  fit: BoxFit.cover)));
    }

    Widget buildSplashBody() {
      if (firebaseUserState == null ) {
        return const AuthScreen();
      } else if (appUserState.id == AppUser.emptyUser.id) {
        return const RegisterDetailScreen();
      } else if (firebaseUserState.emailVerified == false &&
          appUserState.id != AppUser.emptyUser.id) {
        return const VerifyScreen();
      } else {
        // User in the backend
        final firstTimeUsingTheApp = getFirstTimeUsingApp();

        if (firstTimeUsingTheApp == true) {
          // Redirect to the StartScreen
          return const StartScreen();
        } else {
          // Not the first time
          return const HomeScreen();
        }
      }
    }

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(child: buildSplashBody()));
  }
}
