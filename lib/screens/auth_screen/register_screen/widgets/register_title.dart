import 'package:flutter/material.dart';

/* Text title
    Autogenerated by FlutLab FTF Generator
  */
class RegisterTitle extends StatelessWidget {
  const RegisterTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return RichText(
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        text: TextSpan(
          style: const TextStyle(
            height: 1.152999997138977,
            fontSize: 16.0,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 255, 255, 255),

            /* letterSpacing: 0.0, */
          ),
          children: [
            TextSpan(
              text: title,
            ),
            const TextSpan(
              text: '''*''',
              style: TextStyle(
                color: Color.fromARGB(255, 63, 141, 253),

                /* letterSpacing: null, */
              ),
            )
          ],
        ));
  }
}