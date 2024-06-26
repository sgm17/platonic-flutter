import 'package:flutter/material.dart';

/* Text meet_title
    Autogenerated by FlutLab FTF Generator
  */
class MeetTitle extends StatelessWidget {
  final String name;

  const MeetTitle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 10.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 255, 255, 255),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
