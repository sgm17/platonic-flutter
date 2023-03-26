import 'package:flutter/material.dart';
import 'package:platonic/providers/user_provider/app_user_provider.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Oauth2Container extends ConsumerWidget {
  const Oauth2Container({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> toggleGoogleSignIn() async {
      await ref.read(appUserProvider.notifier).userRegisterGoogle();
    }

    Future<void> toggleAppleSignIn() async {
      await ref.read(appUserProvider.notifier).userRegisterApple();
    }

    return SizedBox(
      height: 104.0,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: toggleAppleSignIn,
          child: const SizedBox(
            height: 44.0,
            child: AppleOauth2Container(),
          ),
        ),
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
