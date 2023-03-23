import 'package:flutter/material.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';

class AppleOauth2ContentContainer extends StatelessWidget {
  const AppleOauth2ContentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 358.0,
      height: 44.0,
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
              width: 358.0,
              height: 44.0,
              child: AppleOauth2Text(),
            ),
            Positioned(
              left: 16.0,
              top: 12.0,
              right: null,
              bottom: null,
              width: 17.68421173095703,
              height: 21.0,
              child: Apple(),
            )
          ]),
    );
  }
}
