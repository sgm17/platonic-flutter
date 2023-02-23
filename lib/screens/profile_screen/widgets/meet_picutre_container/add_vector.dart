import 'package:flutter/material.dart';
import 'package:platonic/helpers/svg/svg.dart';

class AddVector extends StatelessWidget {
  const AddVector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 29.166662216186523,
      height: 29.166662216186523,
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M13.0208 29.1667L13.0208 16.1458L0 16.1458L0 13.0208L13.0208 13.0208L13.0208 0L16.1458 0L16.1458 13.0208L29.1667 13.0208L29.1667 16.1458L16.1458 16.1458L16.1458 29.1667L13.0208 29.1667Z')
          ..color = Color.fromARGB(255, 255, 255, 255),
      ]),
    );
  }
}
