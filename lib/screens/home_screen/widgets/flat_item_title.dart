import 'package:flutter/material.dart';

/* Text title
    Autogenerated by FlutLab FTF Generator
  */
class FlatItemTitle extends StatelessWidget {
  final String title;

  const FlatItemTitle({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.3020000457763672,
        fontSize: 16.0,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 255, 255, 255),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
