import 'package:flutter/material.dart';

class AuthenticationTitleText extends StatelessWidget {
  final String title;

  const AuthenticationTitleText({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: const TextStyle(
          height: 1.2249999727521623,
          fontSize: 28.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w800,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
