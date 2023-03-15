import 'package:flutter/material.dart';

/* Text Are you sure that you wan’t to delete the flat?
    Autogenerated by FlutLab FTF Generator
  */
class LoadingText extends StatelessWidget {
  final String loading;

  const LoadingText({super.key, required this.loading});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        loading,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        style: const TextStyle(
          height: 1.152999997138977,
          fontSize: 16.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 0, 0, 0),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}