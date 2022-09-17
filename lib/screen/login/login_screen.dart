import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/widgets.dart';

class Login extends ConsumerWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(237, 240, 245, 1),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 112, horizontal: 16),
        child: LoginForm(),
      ),
    );
  }
}
