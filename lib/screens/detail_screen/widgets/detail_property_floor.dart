import 'package:flutter/material.dart';
import 'widgets.dart';

/* Group floor
    Autogenerated by FlutLab FTF Generator
  */
class DetailPropertyFloor extends StatelessWidget {
  final int floor;

  const DetailPropertyFloor({Key? key, required this.floor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 16.0,
      child: Row(children: [
        const SizedBox(
          width: 15.0,
          height: 15.0,
          child: DetailPropertyFloorIconContainer(),
        ),
        const SizedBox(
          width: 4.0,
        ),
        DetailPropertyFloorTitle(
          floor: floor,
        ),
      ]),
    );
  }
}
