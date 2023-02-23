import 'package:flutter/material.dart';
import 'package:platonic/helpers/transform/transform.dart';
import 'package:platonic/screens/match_screen/widgets/widgets.dart';

/* Frame favorite_FILL1_wght400_GRAD0_opsz48 1
    Autogenerated by FlutLab FTF Generator
  */
class MatchSmallFavouriteIconContainer extends StatelessWidget {
  const MatchSmallFavouriteIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 0.87,
        b: -0.50,
        c: 0.50,
        d: 0.87,
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: SizedBox(
            width: 10.0,
            height: 10.0,
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
                      double percentWidth = 0.8333333015441895;
                      double scaleX = (constraints.maxWidth * percentWidth) /
                          8.333333015441895;

                      double percentHeight = 0.7635417461395264;
                      double scaleY = (constraints.maxHeight * percentHeight) /
                          7.635417461395264;

                      return Stack(children: [
                        TransformHelper.translateAndScale(
                            translateX:
                                constraints.maxWidth * 0.08333332538604736,
                            translateY:
                                constraints.maxHeight * 0.11041667461395263,
                            translateZ: 0,
                            scaleX: scaleX,
                            scaleY: scaleY,
                            scaleZ: 1,
                            child: MatchSmallFavouriteIcon())
                      ]);
                    }),
                  )
                ]),
          ),
        ));
  }
}