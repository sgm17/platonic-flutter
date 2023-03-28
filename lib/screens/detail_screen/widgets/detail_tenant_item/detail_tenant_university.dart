import 'package:flutter/material.dart';

/* Text body
    Autogenerated by FlutLab FTF Generator
  */
class DetailTenantUniversity extends StatelessWidget {
  final String university;

  const DetailTenantUniversity({Key? key, required this.university})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      university,
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1.1530000141688757,
        fontSize: 14.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 255, 255, 255),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
