import 'package:flutter/material.dart';
import 'widgets.dart';

/* Group bathroom
    Autogenerated by FlutLab FTF Generator
  */
class DetailPropertyBuilt extends StatelessWidget {
  final int built;

  const DetailPropertyBuilt({Key? key, required this.built}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 16.0,
      child: Row(children: [
        const SizedBox(
          width: 15.0,
          height: 15.0,
          child: DetailPropertyBuiltIconContainer(),
        ),
        const SizedBox(
          width: 4.0,
        ),
        DetailPropertyBuiltTitle(
          built: built,
        ),
      ]),
    );
  }
}
