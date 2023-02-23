import 'package:flutter/material.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';

class Oauth2Container extends StatelessWidget {
  const Oauth2Container({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.0,
      height: 104.0,
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
              child: AppleOauth2Container(),
            ),
            const Positioned(
              left: 0.0,
              top: 60.0,
              right: null,
              bottom: null,
              width: 358.0,
              height: 44.0,
              child: GoogleOauth2Container(),
            )
          ]),
    );
  }
}
