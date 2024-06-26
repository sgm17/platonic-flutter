import 'package:platonic/screens/home_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

/* Frame add
    Autogenerated by FlutLab FTF Generator
  */
class StoryAdd extends StatelessWidget {
  const StoryAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.zero,
      child: SizedBox(
        width: 48.0,
        height: 48.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 10.0,
                top: 10.0,
                right: null,
                bottom: null,
                width: 28.0,
                height: 28.0,
                child: StoryAddIcon(),
              )
            ]),
      ),
    );
  }
}
