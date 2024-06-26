import 'package:flutter/material.dart';

/* Text directiontitle
    Autogenerated by FlutLab FTF Generator
  */
class FlatItemDirectionTitle extends StatelessWidget {
  const FlatItemDirectionTitle(
      {super.key, required this.state, required this.city, required this.name});

  final String state, city, name;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name, $city, $state',
      overflow: TextOverflow.ellipsis,
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
