import 'package:flutter/material.dart';

class MessageNotReceived extends StatelessWidget {
  const MessageNotReceived({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Align(
        alignment: Alignment.center,
        child: RichText(
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                height: 1.152999997138977,
                fontSize: 16.0,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 255, 255, 255),

                /* letterSpacing: 0.0, */
              ),
              children: [
                TextSpan(
                  text: '''Didn't receive the email? ''',
                ),
                TextSpan(
                  text: '''Resend''',
                  style: TextStyle(
                    color: Color.fromARGB(255, 63, 141, 253),

                    /* letterSpacing: null, */
                  ),
                )
              ],
            )),
      ),
    );
  }
}
