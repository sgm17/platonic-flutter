import 'package:flutter/material.dart';
import 'package:platonic/screens/create_screen/widgets/widgets.dart';

/* Ellipse external_circle
    Autogenerated by FlutLab FTF Generator
  */
class CreateCircularButton extends StatelessWidget {
  const CreateCircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74.0,
      height: 74.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: const Color.fromARGB(
                255,
                255,
                255,
                255,
              ),
              width: 5.0)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          alignment: Alignment.center,
          width: 60.0,
          height: 60.0,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 255, 255, 255)),
          child: const CreateAa(),
        ),
      ),
    );
  }
}