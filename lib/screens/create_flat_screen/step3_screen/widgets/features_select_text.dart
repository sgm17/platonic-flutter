import 'package:flutter/material.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';

/* Text searchtext
    Autogenerated by FlutLab FTF Generator
  */
class FeaturesSelectText extends StatelessWidget {
  final List<FeatureModel> features;

  const FeaturesSelectText({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return Text(
      features.isEmpty
          ? "Select some features"
          : features.map((e) => e.name).toList().join(', '),
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: const TextStyle(
        height: 1.3020000457763672,
        fontSize: 14.0,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 255, 255, 255),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}