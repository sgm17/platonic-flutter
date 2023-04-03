import 'package:flutter/material.dart';
import 'package:platonic/providers/user_provider/app_user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

import 'package:platonic/screens/register_screen/widgets/widgets.dart';

class Oauth2Container extends ConsumerStatefulWidget {
  const Oauth2Container({super.key});

  @override
  Oauth2ContainerState createState() => Oauth2ContainerState();
}

class Oauth2ContainerState extends ConsumerState<Oauth2Container> {
  bool isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    Future<void> toggleGoogleSignIn() async {
      if (isSigningIn == false) {
        setState(() {
          isSigningIn = true;
        });
        await ref.read(appUserProvider.notifier).userRegisterGoogle();
        setState(() {
          isSigningIn = false;
        });
      }
    }

    Future<void> toggleAppleSignIn() async {
      if (isSigningIn == false) {
        setState(() {
          isSigningIn = true;
        });
        await ref.read(appUserProvider.notifier).userRegisterApple();
        setState(() {
          isSigningIn = false;
        });
      }
    }

    return SizedBox(
      height: Platform.isAndroid ? 44.0 : 104.0,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        if (Platform.isIOS)
          GestureDetector(
            onTap: toggleAppleSignIn,
            child: const SizedBox(
              height: 44.0,
              child: AppleOauth2Container(),
            ),
          ),
        if (Platform.isIOS)
          const SizedBox(
            height: 16.0,
          ),
        if (Platform.isAndroid || Platform.isIOS)
          GestureDetector(
            onTap: toggleGoogleSignIn,
            child: const SizedBox(
              height: 44.0,
              child: GoogleOauth2Container(),
            ),
          )
      ]),
    );
  }
}
