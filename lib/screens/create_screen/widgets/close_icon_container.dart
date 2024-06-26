import 'package:flutter/material.dart';
import 'package:platonic/helpers/transform/transform.dart';
import 'package:platonic/screens/create_screen/widgets/widgets.dart';

/* Frame close_FILL0_wght400_GRAD0_opsz48 1
    Autogenerated by FlutLab FTF Generator
  */
class CloseIconContainer extends StatelessWidget {
  const CloseIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: SizedBox(
        width: 20.0,
        height: 20.0,
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
                  double percentWidth = 0.56875;
                  double scaleX =
                      (constraints.maxWidth * percentWidth) / 11.375;

                  double percentHeight = 0.56875;
                  double scaleY =
                      (constraints.maxHeight * percentHeight) / 11.375;

                  return Stack(children: [
                    TransformHelper.translateAndScale(
                        translateX: constraints.maxWidth * 0.215625,
                        translateY: constraints.maxHeight * 0.215625,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: scaleY,
                        scaleZ: 1,
                        child: const CloseIcon())
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
