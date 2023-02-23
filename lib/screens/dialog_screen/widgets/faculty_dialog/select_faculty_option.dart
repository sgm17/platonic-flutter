import 'package:flutter/material.dart';
import 'package:platonic/screens/dialog_screen/widgets/widgets.dart';

/* Group option_selected
    Autogenerated by FlutLab FTF Generator
  */
class SelectFacultyOption extends StatelessWidget {
  final bool isSelected;
  final String studyTitle;

  const SelectFacultyOption(
      {super.key, required this.isSelected, required this.studyTitle});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CheckContainer(
        isBlue: false,
        isSelected: isSelected,
      ),
      const SizedBox(
        width: 9.0,
      ),
      Expanded(
        child: DialogsTitle(
          name: studyTitle,
        ),
      )
    ]);
  }
}