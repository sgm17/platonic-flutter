import 'package:flutter/material.dart';

/* Rectangle google
    Autogenerated by FlutLab FTF Generator
  */
class Google extends StatelessWidget {
  const Google({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 21.0,
      height: 21.0,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Image.asset(
          "assets/images/google_icon.png",
          color: null,
          fit: BoxFit.cover,
          width: 21.0,
          height: 21.0,
          colorBlendMode: BlendMode.dstATop,
        ),
      ),
    );
  }
}
