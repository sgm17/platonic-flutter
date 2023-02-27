import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/providers/shared_preferences_provider/shared_preferences_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/auth_screen/auth_screen.dart';
import 'package:platonic/screens/home_screen/home_screen.dart';
import 'package:platonic/screens/register_detail_screen/register_detail_screen.dart';
import 'package:platonic/screens/start_screen/start_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  bool isFirstTimeUsingApp(SharedPreferences sharedPreferences) {
    final firstTimeUsingAppp =
        sharedPreferences.getBool(FIRST_TIME_USING_APP_KEY);

    return firstTimeUsingAppp ?? true;
  }

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userProvider);

    if (splashState == false) {
      return Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200, maxHeight: 200),
              child:
                  Image.asset('assets/images/splash.png', fit: BoxFit.cover)));
    }

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: SafeArea(
            child: userState.when(
          data: (AppUser user) {
            if (user.uid == '') {
              // No user in the backend
              return const RegisterDetailScreen();
            } else {
              // Instance SharedPreferences()
              final sharedPreferences = ref.read(sharedPreferencesProvider);

              // User in the backend
              final firstTimeUsingTheApp =
                  isFirstTimeUsingApp(sharedPreferences);

              if (firstTimeUsingTheApp == true) {
                // First login of the user
                return FutureBuilder<bool>(
                  // Set the first time using app to false
                  future: sharedPreferences.setBool(
                      FIRST_TIME_USING_APP_KEY, false),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const SizedBox.shrink();
                    }
                    // Redirect to the StartScreen
                    return const StartScreen();
                  },
                );
              } else {
                // Not the first time
                return const HomeScreen();
              }
            }
          },
          // No Firebase user
          loading: () => const AuthScreen(),
          error: (error, stackTrace) {
            return Text(error.toString());
          },
        )));
  }
}
