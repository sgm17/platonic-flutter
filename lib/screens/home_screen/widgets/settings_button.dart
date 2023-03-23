import 'package:flutter/material.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';

/* Group settings
    Autogenerated by FlutLab FTF Generator
  */
class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/SettingsScreen'),
      child: SizedBox(
        width: 35.0,
        height: 35.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: null,
                width: null,
                height: 35.0,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width = constraints.maxWidth - 0.0;
                  final double scaleX = width <= 0 ? 0 : (width / 35.0);

                  const Widget child = ButtonBackground();
                  return Stack(children: [
                    Transform(
                      transform: Matrix4(scaleX, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,
                          0, 0.0, 0.0, 0, 1),
                      alignment: Alignment.topLeft,
                      child: const SizedBox.expand(child: child),
                    )
                  ]);
                }),
              ),
              const Positioned(
                left: 9.0,
                top: 9.0,
                right: 10.0,
                bottom: null,
                width: null,
                height: 16.0,
                child: SettingsContainer(),
              )
            ]),
      ),
    );
  }
}
