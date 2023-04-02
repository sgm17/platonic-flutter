import 'package:flutter/material.dart';

/* Text bathroomtitle
    Autogenerated by FlutLab FTF Generator
  */
class DetailPropertyFloorTitle extends StatelessWidget {
  final int floor;

  const DetailPropertyFloorTitle({Key? key, required this.floor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      '''$floor floor''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: const TextStyle(
        height: 1.3020000457763672,
        fontSize: 12.0,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 245, 245, 245),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}