import 'package:flutter/material.dart';

/* Text €820/month
    Autogenerated by FlutLab FTF Generator
  */
class DetailPricePerMonthTitle extends StatelessWidget {
  final int principalCost, electricityCost;

  const DetailPricePerMonthTitle(
      {Key? key, required this.principalCost, required this.electricityCost})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
          text: TextSpan(
            style: const TextStyle(
              height: 1.3020000457763672,
              fontSize: 16.0,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 255, 255, 255),

              /* letterSpacing: 0.0, */
            ),
            children: [
              const TextSpan(
                text: '''€''',
                style: TextStyle(
                  fontSize: 10.0,

                  /* letterSpacing: null, */
                ),
              ),
              TextSpan(
                text: ((principalCost + electricityCost) / 100).toString(),
              ),
              const TextSpan(
                text: '''/month''',
                style: TextStyle(
                  fontSize: 10.0,
                  color: Color.fromARGB(255, 130, 130, 132),

                  /* letterSpacing: null, */
                ),
              )
            ],
          )),
    );
  }
}
