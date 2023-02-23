import 'package:flutter/material.dart';
import 'package:platonic/helpers/transform/transform.dart';
import 'package:platonic/screens/settings_screen/widgets/widgets.dart';

/* Instance meet_title
    Autogenerated by FlutLab FTF Generator
  */
class SettingsTitleContainer extends StatelessWidget {
  final String title;

  const SettingsTitleContainer({Key? key, required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 116.0,
      height: 16.0,
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
                final double width = constraints.maxWidth * 0.6896551724137931;

                final double height = constraints.maxHeight * 1.125;

                return Stack(children: [
                  TransformHelper.translate(
                      x: 0,
                      y: 0,
                      z: 0,
                      child: SizedBox(
                        width: width,
                        height: height,
                        child: const SettingsTitle(title: '''Sex to meet'''),
                      ))
                ]);
              }),
            )
          ]),
    );
  }
}