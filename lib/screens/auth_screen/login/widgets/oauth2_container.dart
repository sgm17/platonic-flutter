import 'package:flutter/material.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';

class Oauth2Container extends StatelessWidget {
  const Oauth2Container({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 104.0,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          height: 44.0,
          child: AppleOauth2Container(),
        ),
        SizedBox(
          height: 44.0,
          child: GoogleOauth2Container(),
        )
      ]),
    );
  }
}
