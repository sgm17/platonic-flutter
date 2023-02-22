import 'package:flutter/material.dart';
import 'package:platonic/helpers/svg/svg.dart';

class BackButtonVector extends StatelessWidget {
  const BackButtonVector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 15.0,
      height: 9.958333969116211,
      child: SvgWidget(painters: [
        SvgPathPainter.fill()
          ..addPath(
              'M4.97917 9.95833L0 4.97917L4.97917 0L5.875 0.895833L2.41667 4.35417L15 4.35417L15 5.60417L2.41667 5.60417L5.875 9.0625L4.97917 9.95833Z')
          ..color = const Color.fromARGB(255, 255, 255, 255),
      ]),
    );
  }
}
