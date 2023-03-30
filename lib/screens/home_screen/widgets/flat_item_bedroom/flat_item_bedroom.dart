import 'package:flutter/material.dart';
import 'widgets.dart';

/* Group bathroom
    Autogenerated by FlutLab FTF Generator
  */
class FlatItemBedroom extends StatelessWidget {
  const FlatItemBedroom({super.key, required this.bedroom});

  final String bedroom;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.0,
      child: Row(children: [
        const SizedBox(
          width: 15.0,
          height: 15.0,
          child: FlatItemBedroomIcon(),
        ),
        const SizedBox(
          width: 3.0,
        ),
        SizedBox(
          height: 16.0,
          child: FlatItemBedroomTitle(
            bedroom: bedroom,
          ),
        ),
      ]),
    );
  }
}
