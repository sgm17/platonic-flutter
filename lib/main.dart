import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/screens/dialog_screen/faculty_dialog_screen.dart';
import 'package:platonic/screens/dialog_screen/study_dialog_screen.dart';
import 'package:platonic/screens/dialog_screen/university_dialog_screen.dart';
import 'package:platonic/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:platonic/screens/match_screen/match_screen.dart';
import 'package:platonic/screens/profile_screen/profile_screen.dart';
import 'package:platonic/screens/splash_screen/splash_screen.dart';
import 'package:platonic/screens/start_screen/start_screen.dart';
import 'package:platonic/screens/settings_screen/settings_screen.dart';
import 'package:platonic/screens/register_detail_screen/register_detail_screen.dart';
import 'package:platonic/screens/create_screen/create_screen.dart';
import 'package:platonic/screens/chat_screen/chat_screen.dart';
import 'package:platonic/screens/home_screen/home_screen.dart';
import 'package:platonic/screens/profile_screen/other_profile_screen.dart';
import 'package:platonic/screens/auth_screen/auth_screen.dart';
import 'package:platonic/screens/story_screen/story_screen.dart';
import 'package:platonic/screens/verify_screen/verify_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'providers/shared_preferences_provider/shared_preferences_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final sharedPreferenches = await SharedPreferences.getInstance();

  const String env =
      String.fromEnvironment('ENVIRONMENT', defaultValue: 'development');

  await dotenv.load(
      fileName: env == 'production'
          ? 'assets/environment/.env.production'
          : 'assets/environment/.env.development');

  runApp(ProviderScope(overrides: [
    sharedPreferencesProvider.overrideWithValue(sharedPreferenches)
  ], child: const PlatonicApp()));
}

class PlatonicApp extends StatelessWidget {
  const PlatonicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platonic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplashScreen',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      routes: {
        '/VerifyScreen': (context) => const VerifyScreen(),
        '/SplashScreen': (context) => const SplashScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/OtherProfileScreen': (context) => const OtherProfileScreen(),
        '/StartScreen': (context) => const StartScreen(),
        '/SettingsScreen': (context) => const SettingsScreen(),
        '/AuthScreen': (context) => const AuthScreen(),
        '/ForgotPasswordScreen': (context) => const ForgotPasswordScreen(),
        '/RegisterDetailScreen': (context) => const RegisterDetailScreen(),
        '/CreateScreen': (context) => const CreateScreen(),
        '/StoryScreen': (context) => const StoryScreen(),
        '/ChatScreen': (context) => const ChatScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/MatchScreen': (context) => const MatchScreen(),
        '/UniversityDialogScreen': (context) => const UniversityDialogScreen(),
        '/FacultyDialogScreen': (context) => const FacultyDialogScreen(),
        '/StudyDialogScreen': (context) => const StudyDialogScreen(),
      },
    );
  }
}
