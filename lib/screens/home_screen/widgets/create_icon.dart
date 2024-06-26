import 'package:flutter/material.dart';
import 'package:platonic/helpers/svg/svg.dart';

class CreateIcon extends StatelessWidget {
  const CreateIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 11.666666030883789,
      height: 11.666666030883789,
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M5.20833 11.6667L5.20833 6.45833L0 6.45833L0 5.20833L5.20833 5.20833L5.20833 0L6.45833 0L6.45833 5.20833L11.6667 5.20833L11.6667 6.45833L6.45833 6.45833L6.45833 11.6667L5.20833 11.6667Z')
          ..color = const Color.fromARGB(255, 255, 255, 255),
      ]),
    );
  }
}
