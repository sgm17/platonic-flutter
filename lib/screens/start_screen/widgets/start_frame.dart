import 'package:flutter/material.dart';
import 'package:platonic/screens/start_screen/widgets/widgets.dart';

/* Frame Frame 1
    Autogenerated by FlutLab FTF Generator
  */
class StartFrame extends StatelessWidget {
  const StartFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 340.0,
      height: 510.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 340.0,
              height: 170.0,
              child: StartTop(),
            ),
            Positioned(
              left: 0.0,
              top: 170.0,
              right: null,
              bottom: null,
              width: 340.0,
              height: 170.0,
              child: StartMiddle(),
            ),
            Positioned(
              left: 0.0,
              top: 340.0,
              right: null,
              bottom: null,
              width: 340.0,
              height: 170.0,
              child: StartBottom(),
            )
          ]),
    );
  }
}
