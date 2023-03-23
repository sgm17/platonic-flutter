import 'package:flutter/material.dart';
import 'package:platonic/screens/start_screen/widgets/widgets.dart';

/* Frame started
    Autogenerated by FlutLab FTF Generator
  */
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    toggleGetStarted() =>
        Navigator.pushReplacementNamed(context, '/HomeScreen');

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: Column(
          children: [
            const SizedBox(
              height: 442.0,
              child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0.0,
                      top: -20.0,
                      height: 447.0042724609375,
                      child: BackgroundDecoration(),
                    ),
                    Positioned(
                      left: 25.0,
                      top: -68.0,
                      height: 510.0,
                      child: StartFrame(),
                    ),
                  ]),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 86.0,
                    child: StartTitle(),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const SizedBox(
                    height: 56.0,
                    child: StartSubtitle(),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  SizedBox(
                    height: 60.0,
                    child: GestureDetector(
                        onTap: toggleGetStarted, child: const StartButton()),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
