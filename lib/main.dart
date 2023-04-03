import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/step1_screen.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/step2_screen.dart';
import 'package:platonic/screens/create_flat_screen/step3_screen/step3_screen.dart';
import 'package:platonic/screens/create_flat_screen/step4_screen/step4_screen.dart';
import 'package:platonic/screens/detail_screen/detail_screen.dart';
import 'package:platonic/screens/dialog_screen/faculty_dialog_screen.dart';
import 'package:platonic/screens/dialog_screen/study_dialog_screen.dart';
import 'package:platonic/screens/dialog_screen/university_dialog_screen.dart';
import 'package:platonic/screens/features_list_screen/features_list_screen.dart';
import 'package:platonic/screens/features_screen/features_create_screen.dart';
import 'package:platonic/screens/flats_screen/flats_screen.dart';
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

  const String env = String.fromEnvironment('ENV', defaultValue: 'production');

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
        Locale('ca'), // Catalan
      ],
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/AuthScreen': (context) => const AuthScreen(),
        '/ForgotPasswordScreen': (context) => const ForgotPasswordScreen(),
        '/VerifyScreen': (context) => const VerifyScreen(),
        '/RegisterDetailScreen': (context) => const RegisterDetailScreen(),
        '/StartScreen': (context) => const StartScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/OtherProfileScreen': (context) => const OtherProfileScreen(),
        '/SettingsScreen': (context) => const SettingsScreen(),
        '/CreateScreen': (context) => const CreateScreen(),
        '/StoryScreen': (context) => const StoryScreen(),
        '/ChatScreen': (context) => const ChatScreen(),
        '/MatchScreen': (context) => const MatchScreen(),
        '/UniversityDialogScreen': (context) => const UniversityDialogScreen(),
        '/FacultyDialogScreen': (context) => const FacultyDialogScreen(),
        '/StudyDialogScreen': (context) => const StudyDialogScreen(),
        '/FlatsScreen': (context) => const FlatsScreen(),
        '/Step1Screen': (context) => const Step1Screen(),
        '/Step2Screen': (context) => const Step2Screen(),
        '/Step3Screen': (context) => const Step3Screen(),
        '/Step4Screen': (context) => const Step4Screen(),
        '/DetailScreen': (context) => const DetailScreen(),
        '/FeaturesCreateScreen': (context) => const FeaturesCreateScreen(),
        '/FeaturesListScreen': (context) => const FeaturesListScreen(),
      },
    );
  }
}
