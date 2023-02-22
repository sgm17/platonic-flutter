import 'package:flutter/material.dart';
import 'package:platonic/helpers/svg/svg.dart';

class MeetSelectIcon extends StatelessWidget {
  const MeetSelectIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.5,
      height: 6.190624713897705,
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M5.25 6.19062L0 0.940625L0.940625 0L5.25 4.33125L9.55937 0.0218747L10.5 0.962499L5.25 6.19062Z')
          ..color = Color.fromARGB(255, 255, 255, 255),
      ]),
    );
  }
}
