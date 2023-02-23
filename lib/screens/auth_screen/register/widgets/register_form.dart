import 'package:platonic/screens/auth_screen/register/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 343.0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 44.0,
          child: AppleOauth2Container(),
        ),
        const SizedBox(
          height: 32.0,
        ),
        const SizedBox(
          height: 44.0,
          child: GoogleOauth2Container(),
        ),
        const SizedBox(
          height: 32.0,
        ),
        SizedBox(
          height: 18.0,
          child: DividerContainer(),
        ),
        const SizedBox(
          height: 32.0,
        ),
        const SizedBox(
          height: 20.0,
          child: RegisterTitle(
            title: '''Email''',
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const SizedBox(
            height: 38.0,
            child: EmailAuthInput(
              isLogin: false,
            )),
        const SizedBox(
          height: 15.0,
        ),
        const SizedBox(
          height: 20.0,
          child: RegisterTitle(
            title: '''Password''',
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const SizedBox(
          height: 38.0,
          child: PasswordAuthInput(
            isLogin: false,
          ),
        ),
      ]),
    );
  }
}
