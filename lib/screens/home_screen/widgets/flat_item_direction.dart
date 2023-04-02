import 'package:flutter/material.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'widgets.dart';

/* Group direction
    Autogenerated by FlutLab FTF Generator
  */
class FlatItemDirection extends StatelessWidget {
  const FlatItemDirection({super.key, required this.properties});

  final PropertyModel properties;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 17.0,
      child: Row(children: [
        const SizedBox(
          height: 15.0,
          child: FlatItemLocationIcon(),
        ),
        const SizedBox(
          width: 3.0,
        ),
        Flexible(
          child: SizedBox(
            height: 18.0,
            child: FlatItemDirectionTitle(
              city: properties.city,
              name: properties.name,
              state: properties.state,
            ),
          ),
        )
      ]),
    );
  }
}