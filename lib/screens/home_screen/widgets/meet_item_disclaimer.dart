import 'package:flutter/material.dart';

class MeetItemDisclaimer extends StatelessWidget {
  const MeetItemDisclaimer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''Maybe this Meet is waiting\n for you at 3 pm''',
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.152999997138977,
        fontSize: 14.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 130, 130, 132),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
