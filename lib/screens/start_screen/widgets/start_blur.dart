import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:platonic/helpers/transform/transform.dart';
import 'package:platonic/screens/start_screen/widgets/widgets.dart';

/* Instance blur
    Autogenerated by FlutLab FTF Generator
  */
class StartBlur extends StatelessWidget {
  const StartBlur({super.key, required this.image, required this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 150.0,
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
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const AvatarContainer(),
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
                double percentWidth = 0.7;
                double scaleX = (constraints.maxWidth * percentWidth) / 70.0;

                double percentHeight = 0.4666666666666667;
                double scaleY = (constraints.maxHeight * percentHeight) / 70.0;

                return Stack(children: [
                  TransformHelper.translateAndScale(
                      translateX: constraints.maxWidth * 0.15,
                      translateY: constraints.maxHeight * 0.12,
                      translateZ: 0,
                      scaleX: scaleX,
                      scaleY: scaleY,
                      scaleZ: 1,
                      child: UserAvatar(image: image))
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
                final double width = constraints.maxWidth * 1.05;

                final double height =
                    constraints.maxHeight * 0.15333333333333332;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: constraints.maxHeight * 0.7133333333333334,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: StartAvatarTitle(
                          name: name,
                        ),
                      ))
                ]);
              }),
            ),
            ClipRRect(
              borderRadius: BorderRadius.zero,
              child: SizedBox(
                  width: 100.0,
                  height: 150.0,
                  child: BackdropFilter(
                      filter: ui.ImageFilter.blur(
                        sigmaX: 2.0,
                        sigmaY: 2.0,
                      ),
                      child: Container(color: Colors.black.withOpacity(0.0)))),
            )
          ]),
    );
  }
}
