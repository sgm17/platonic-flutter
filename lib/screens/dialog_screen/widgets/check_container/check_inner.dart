import 'package:flutter/material.dart';
import 'package:platonic/helpers/svg/svg.dart';

/* Ellipse inner_check
    Autogenerated by FlutLab FTF Generator
  */
class CheckInner extends StatelessWidget {
  final bool isSelected;
  final bool isBlue;

  const CheckInner({super.key, required this.isSelected, required this.isBlue});
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: isSelected ? 1 : 0,
      child: SizedBox(
        width: 8.0,
        height: 8.0,
        child: SvgWidget(painters: [
          SvgPathPainter.fill()
            ..addPath(
                'M8 4C8 6.20914 6.20914 8 4 8C1.79086 8 0 6.20914 0 4C0 1.79086 1.79086 0 4 0C6.20914 0 8 1.79086 8 4Z')
            ..color = isBlue
                ? const Color.fromARGB(255, 33, 185, 252)
                : const Color.fromARGB(255, 255, 255, 255),
        ]),
      ),
    );
  }
}
