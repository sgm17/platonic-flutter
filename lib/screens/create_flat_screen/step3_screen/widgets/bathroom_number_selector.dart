import 'package:flutter/material.dart';
import 'package:platonic/screens/create_flat_screen/step2_screen/widgets/widgets.dart';
import 'package:platonic/screens/create_flat_screen/step3_screen/widgets/widgets.dart';

/* Group Group 2
    Autogenerated by FlutLab FTF Generator
  */
class BathroomNumberSelector extends StatelessWidget {
  const BathroomNumberSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 70.0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 26.0,
          child: CreateFlatDetailSubtitle(
            subtitle: '''Bathrooms''',
          ),
        ),
        SizedBox(
          height: 14.0,
        ),
        SizedBox(
          height: 30.0,
          child: AmenityNumberRow(
            bedroom: false,
          ),
        )
      ]),
    );
  }
}
