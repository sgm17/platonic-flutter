import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/university_provider/src/providers/universities_provider.dart';
import 'package:platonic/screens/MatchScreen.dart';
import 'package:platonic/screens/ProfileScreen.dart';
import 'package:platonic/screens/SplashScreen.dart';
import 'package:platonic/screens/StartScreen.dart';
import 'package:platonic/screens/SettingsScreen.dart';
import 'package:platonic/screens/RegisterDetailScreen.dart';
import 'package:platonic/screens/CreateScreen.dart';
import 'package:platonic/screens/ChatScreen.dart';
import 'package:platonic/screens/HomeScreen.dart';
import 'package:platonic/screens/StoryScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'domain/university_repository/src/models/models.dart';
import 'providers/shared_preferences_provider/shared_preferences_provider.dart';
import 'screens/AuthScreen.dart';
import 'screens/OtherProfileScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final universityList = await UniversitiesList.getUniversities();
  final sharedPreferenches = await SharedPreferences.getInstance();
  runApp(ProviderScope(overrides: [
    universitiesProvider.overrideWithValue(universityList),
    sharedPreferencesProvider.overrideWithValue(sharedPreferenches)
  ], child: const PlatonicApp()));
}

class PlatonicApp extends StatelessWidget {
  const PlatonicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      },
    );
  }
}
