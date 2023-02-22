import 'package:flutter/material.dart';
import 'package:platonic/widgets/login/LoginTitle.dart';
import 'package:platonic/widgets/register/EmailAuthInput.dart';
import 'package:platonic/widgets/register/PasswordAuthInput.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 142.0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 18.0,
          child: LoginTitle(title: '''Email'''),
        ),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(
          height: 38.0,
          child: EmailAuthInput(
            isLogin: true,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 18.0,
          child: LoginTitle(title: '''Password'''),
        ),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(
          height: 38.0,
          child: PasswordAuthInput(
            isLogin: true,
          ),
        ),
      ]),
    );
  }
}
