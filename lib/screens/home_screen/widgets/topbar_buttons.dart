import 'package:flutter/material.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';

/* Frame topbar_buttons
    Autogenerated by FlutLab FTF Generator
  */
class TopbarButtons extends StatelessWidget {
  const TopbarButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 135.0,
      height: 35.0,
      child: Row(children: [
        SizedBox(
          height: 35.0,
          child: SettingsButton(),
        ),
        SizedBox(
          width: 15.0,
        ),
        SizedBox(
          height: 35.0,
          child: CreateButton(),
        ),
        SizedBox(
          width: 15.0,
        ),
        SizedBox(
          height: 35.0,
          child: ProfileButton(),
        )
      ]),
    );
  }
}
