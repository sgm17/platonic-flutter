import 'package:flutter/material.dart';

/* Text Firefly Studio Apartment
    Autogenerated by FlutLab FTF Generator
  */
class DetailTitle extends StatelessWidget {
  final String title;

  const DetailTitle({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: const TextStyle(
        height: 1.3020000457763672,
        fontSize: 18.0,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 255, 255, 255),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
