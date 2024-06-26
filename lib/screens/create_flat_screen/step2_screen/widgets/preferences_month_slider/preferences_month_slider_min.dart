import 'package:flutter/material.dart';
import 'package:platonic/helpers/svg/svg.dart';

/* Ellipse slidermin
    Autogenerated by FlutLab FTF Generator
  */
class PreferencesMonthSliderMin extends StatelessWidget {
  const PreferencesMonthSliderMin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25.0,
      height: 25.0,
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M25 12.5C25 19.4036 19.4036 25 12.5 25C5.59644 25 0 19.4036 0 12.5C0 5.59644 5.59644 0 12.5 0C19.4036 0 25 5.59644 25 12.5Z')
          ..color = const Color.fromARGB(255, 255, 255, 255),
        SvgPathPainter.stroke(
          1.0,
          strokeJoin: StrokeJoin.miter,
        )
          ..addPath(
              'M24 12.5C24 18.8513 18.8513 24 12.5 24L12.5 26C19.9558 26 26 19.9558 26 12.5L24 12.5ZM12.5 24C6.14873 24 1 18.8513 1 12.5L-1 12.5C-1 19.9558 5.04416 26 12.5 26L12.5 24ZM1 12.5C1 6.14873 6.14873 1 12.5 1L12.5 -1C5.04416 -1 -1 5.04416 -1 12.5L1 12.5ZM12.5 1C18.8513 1 24 6.14873 24 12.5L26 12.5C26 5.04416 19.9558 -1 12.5 -1L12.5 1Z')
          ..color = const Color.fromARGB(255, 63, 141, 253)
          ..addClipPath(
              'M25 12.5C25 19.4036 19.4036 25 12.5 25C5.59644 25 0 19.4036 0 12.5C0 5.59644 5.59644 0 12.5 0C19.4036 0 25 5.59644 25 12.5Z'),
      ]),
    );
  }
}
