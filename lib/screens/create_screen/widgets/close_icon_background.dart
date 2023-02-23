import 'package:flutter/material.dart';
import 'package:platonic/helpers/svg/svg.dart';

class CloseIconBackground extends StatelessWidget {
  const CloseIconBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.0,
      height: 35.0,
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M35 17.5C35 27.165 27.165 35 17.5 35C7.83502 35 0 27.165 0 17.5C0 7.83502 7.83502 0 17.5 0C27.165 0 35 7.83502 35 17.5Z')
          ..color = const Color.fromARGB(255, 43, 45, 46),
      ]),
    );
  }
}
