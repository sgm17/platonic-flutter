import 'package:flutter/material.dart';

class FlatAmenities extends StatelessWidget {
  final String bedroom, bathroom;
  final int built;

  const FlatAmenities(
      {Key? key,
      required this.bedroom,
      required this.bathroom,
      required this.built})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.bed,
          color: Color.fromARGB(255, 130, 130, 132),
          size: 10.0,
        ),
        SizedBox(
          width: 2.0,
        ),
        Text(
          bedroom.toString(),
          style: TextStyle(
              fontSize: 10.0,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 130, 130, 132)),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.bathtub_outlined,
          color: Color.fromARGB(255, 130, 130, 132),
          size: 10.0,
        ),
        SizedBox(
          width: 2.0,
        ),
        Text(
          bathroom.toString(),
          style: TextStyle(
              fontSize: 10.0,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 130, 130, 132)),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.square_foot_outlined,
          color: Color.fromARGB(255, 130, 130, 132),
          size: 10.0,
        ),
        SizedBox(
          width: 2.0,
        ),
        Text(
          '$built m2',
          style: TextStyle(
              fontSize: 10.0,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 130, 130, 132)),
        ),
      ],
    );
  }
}
