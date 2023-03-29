import 'package:flutter/material.dart';
import 'package:platonic/screens/detail_screen/widgets/widgets.dart';

/* Group linediagram
    Autogenerated by FlutLab FTF Generator
  */
class DetailDiagramLine extends StatelessWidget {
  final int principalCost;
  final int electricityCost;

  const DetailDiagramLine({
    Key? key,
    required this.principalCost,
    required this.electricityCost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21.0,
      child: Row(children: [
        Expanded(
          child: Row(
            children: [
              Flexible(
                flex: principalCost,
                child: DetailPrincipalInterestLine(),
              ),
              SizedBox(
                width: 5.0,
              ),
              Flexible(
                flex: electricityCost,
                child: DetailPrincipalElectricityLine(),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 32.0,
        ),
        SizedBox(
          height: 26.0,
          child: DetailMonthlyCostTitle(
              principalCost: principalCost, electricityCost: electricityCost),
        ),
      ]),
    );
  }
}
