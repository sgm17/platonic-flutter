import 'package:flutter/material.dart';
import 'amenity_number_option.dart';
import 'widgets.dart';

/* Frame bedrooms
    Autogenerated by FlutLab FTF Generator
  */

final List<int> numbers = [0, 1, 2, 3];

class AmenityNumberRow extends StatelessWidget {
  final bool bedroom;

  const AmenityNumberRow({Key? key, required this.bedroom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: Row(
          children: numbers
              .map((number) => Padding(
                  padding: EdgeInsets.only(
                      left: number == 0 ? 0.0 : 16.0,
                      right: number == numbers.length - 1 ? 16.0 : 0.0),
                  child: SizedBox(
                    width: 40.0,
                    height: 30.0,
                    child: AmenityNumberOption(
                      bedroom: bedroom,
                      number: number == numbers.length - 1
                          ? '$number+'
                          : '${number + 1}',
                    ),
                  )))
              .toList()),
    );
  }
}