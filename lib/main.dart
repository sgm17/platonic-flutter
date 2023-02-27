import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/screens/dialog_screen/faculty_dialog_screen.dart';
import 'package:platonic/screens/dialog_screen/study_dialog_screen.dart';
import 'package:platonic/screens/dialog_screen/university_dialog_screen.dart';
import 'package:platonic/screens/match_screen/match_screen.dart';
import 'package:platonic/screens/profile_screen/profile_screen.dart';
import 'package:platonic/screens/splash_screen/splash_screen.dart';
import 'package:platonic/screens/start_screen/start_screen.dart';
import 'package:platonic/screens/settings_screen/settings_screen.dart';
import 'package:platonic/screens/register_detail_screen/register_detail_screen.dart';
import 'package:platonic/screens/create_screen/create_screen.dart';
import 'package:platonic/screens/chat_screen/chat_screen.dart';
import 'package:platonic/screens/home_screen/home_screen.dart';
import 'package:platonic/screens/story_screen/story_screen.dart';
import 'package:platonic/screens/profile_screen/other_profile_screen.dart';
import 'package:platonic/screens/auth_screen/auth_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'providers/shared_preferences_provider/shared_preferences_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final sharedPreferenches = await SharedPreferences.getInstance();
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
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/StoryScreen': (context) => const StoryScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
        '/OtherProfileScreen': (context) => const OtherProfileScreen(),
        '/StartScreen': (context) => const StartScreen(),
        '/SettingsScreen': (context) => const SettingsScreen(),
        '/AuthScreen': (context) => const AuthScreen(),
        '/RegisterDetailScreen': (context) => const RegisterDetailScreen(),
        '/CreateScreen': (context) => const CreateScreen(),
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
