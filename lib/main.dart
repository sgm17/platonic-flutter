import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platonic/providers/shared_preferences_provider/shared_preferences_provider.dart';
import 'package:platonic/screen/app/app.dart';
import 'providers/university_provider/university_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final universities = await getUniversities(
      userUniversityCenter: [41.50613010080779, 2.103939945863225]);
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(ProviderScope(overrides: [
    universitiesProvider.overrideWithValue(universities),
    sharedPreferencesProvider.overrideWithValue(sharedPreferences)
  ], child: const Platonic()));
}

class Platonic extends StatelessWidget {
  const Platonic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Platonic',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily:
              GoogleFonts.montserrat(fontWeight: FontWeight.w500).fontFamily),
      home: const AppScreen(),
    );
  }
}
