import 'package:flutter/material.dart';

/* Text step1-5
    Autogenerated by FlutLab FTF Generator
  */
class NavigateBeforeTitle extends StatelessWidget {
  final String title;
  final Color color;

  const NavigateBeforeTitle(
      {Key? key, required this.title, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.3020000457763672,
          fontSize: 18.0,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
          color: color,

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}