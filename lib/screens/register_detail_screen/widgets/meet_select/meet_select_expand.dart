import 'package:flutter/material.dart';
import 'package:platonic/helpers/transform/transform.dart';
import 'package:platonic/screens/register_detail_screen/widgets/widgets.dart';

class MeetSelectExpand extends StatelessWidget {
  const MeetSelectExpand({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: SizedBox(
        width: 21.0,
        height: 21.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double percentWidth = 0.5;
                  double scaleX = (constraints.maxWidth * percentWidth) / 10.5;

                  double percentHeight = 0.29479165304274785;
                  double scaleY = (constraints.maxHeight * percentHeight) /
                      6.190624713897705;

                  return Stack(children: [
                    TransformHelper.translateAndScale(
                        translateX: constraints.maxWidth * 0.25,
                        translateY: constraints.maxHeight * 0.34583334695725215,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: scaleY,
                        scaleZ: 1,
                        child: const MeetSelectIcon())
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
