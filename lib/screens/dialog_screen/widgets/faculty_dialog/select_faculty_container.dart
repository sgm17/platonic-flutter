import 'package:flutter/material.dart';
import 'package:platonic/domains/university_repository/src/models/faculties_list_model.dart';
import 'package:platonic/screens/dialog_screen/widgets/widgets.dart';

/* Group select
    Autogenerated by FlutLab FTF Generator
  */
class SelectFacultyContainer extends StatelessWidget {
  final FacultiesList faculty;
  final bool isSelected;

  const SelectFacultyContainer(
      {super.key, required this.isSelected, required this.faculty});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        padding: const EdgeInsets.all(8.0),
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: isSelected
              ? const Border.fromBorderSide(BorderSide.none)
              : Border.all(
                  width: 1.0,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
          color: isSelected
              ? const Color.fromARGB(255, 79, 145, 255)
              : Colors.transparent,
        ),
        child: Column(
          children: [
            SelectFacultyTitle(facultyName: faculty.facultyName),
            for (var study in faculty.studies)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8.0),
                  SelectFacultyOption(
                    isSelected: isSelected,
                    studyTitle: study.studyName,
                  ),
                ],
              ),
          ],
        ));
  }
}
