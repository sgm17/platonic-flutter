import 'package:flutter/material.dart';

class AuthenticationButtonText extends StatelessWidget {
  final String text;

  const AuthenticationButtonText({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        style: const TextStyle(
          height: 1.1529999838935003,
          fontSize: 18.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
