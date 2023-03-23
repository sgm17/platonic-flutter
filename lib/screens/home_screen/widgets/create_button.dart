import 'package:flutter/material.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';

/* Group create
    Autogenerated by FlutLab FTF Generator
  */
class CreateButton extends StatelessWidget {
  const CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/CreateScreen'),
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
                left: 8.0,
                top: 7.0,
                right: 7.0,
                bottom: null,
                width: null,
                height: 20.0,
                child: CreateContainer(),
              )
            ]),
      ),
    );
  }
}
