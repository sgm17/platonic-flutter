import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:platonic/screens/auth_screen/login_screen/widgets/widgets.dart';
import 'package:platonic/screens/auth_screen/register_screen/widgets/widgets.dart';

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
