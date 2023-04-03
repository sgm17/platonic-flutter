import 'package:flutter/material.dart';
import 'package:platonic/screens/auth_screen/login/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/register/widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 142.0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 18.0,
          child: LoginTitle(
              title: AppLocalizations.of(context)!.loginFormEmailTitle),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const SizedBox(
          height: 38.0,
          child: EmailAuthInput(
            isLogin: true,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 18.0,
          child: LoginTitle(
              title: AppLocalizations.of(context)!.loginFormPasswordTitle),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const SizedBox(
          height: 38.0,
          child: PasswordAuthInput(
            isLogin: true,
          ),
        ),
      ]),
    );
  }
}
