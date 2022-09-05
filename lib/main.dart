import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen/splash/splash_screen.dart';

void main() {
  runApp(const Platonic());
}

class Platonic extends StatelessWidget {
  const Platonic({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Platonic',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily:
              GoogleFonts.montserrat(fontWeight: FontWeight.w500).fontFamily),
      home: const Splash(),
    );
  }
}
