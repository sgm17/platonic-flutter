import 'package:flutter/material.dart';
import 'widgets.dart';

/* Group comodities
    Autogenerated by FlutLab FTF Generator
  */
class FlatItemComodities extends StatelessWidget {
  const FlatItemComodities({
    super.key,
    required this.bathroom,
    required this.bedroom,
  });

  final String bathroom, bedroom;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        height: 16.0,
        child: FlatItemBedroom(
          bedroom: bedroom,
        ),
      ),
      const SizedBox(
        width: 13.0,
      ),
      SizedBox(height: 16.0, child: FlatItemBadroom(bathroom: bathroom))
    ]);
  }
}
