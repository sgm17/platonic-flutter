import 'package:flutter/material.dart';

class EmailVerificationInstructions extends StatelessWidget {
  const EmailVerificationInstructions({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final hiddenEmail = email.replaceRange(4, email.indexOf('@'), '****');

    return Text(
      "We have sent a verification message to your email:\n$hiddenEmail",
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: const TextStyle(
        height: 1.1530000141688757,
        fontSize: 14.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 255, 255, 255),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
