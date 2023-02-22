import 'package:flutter/material.dart';
import 'package:platonic/helpers/transform/transform.dart';
import 'package:platonic/widgets/oauth2/SigninContainer.dart';
import 'package:platonic/widgets/oauth2/apple/AppleOauth2ContentContainer.dart';

class AppleOauth2Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.0,
      height: 44.0,
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
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth;
                final double height = constraints.maxHeight;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: SigninContainer(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 1.005586592178771;

                final double height =
                    constraints.maxHeight * 1.0454545454545454;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: AppleOauth2ContentContainer(),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}
