import 'package:flutter/material.dart';
import 'package:platonic/screens/register_detail_screen/widgets/widgets.dart';

/* Group university_meet
    Autogenerated by FlutLab FTF Generator
  */
class MeetSelect extends StatelessWidget {
  final String placeholder, title;

  const MeetSelect({Key? key, required this.placeholder, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.0,
      height: 38.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0.0,
              top: 11.0,
              right: null,
              bottom: null,
              width: 116.0,
              height: 16.0,
              child: MeetTitle(
                title: title,
              ),
            ),
            Positioned(
              left: 137.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 221.0,
              height: 38.0,
              child: MeetSelectChild(
                placeholder: placeholder,
              ),
            )
          ]),
    );
  }
}