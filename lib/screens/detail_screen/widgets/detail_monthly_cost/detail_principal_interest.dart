import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:platonic/screens/detail_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

/* Group principalinterest
    Autogenerated by FlutLab FTF Generator
  */
class DetailPrincipalInterest extends StatelessWidget {
  final int principalCost;

  const DetailPrincipalInterest({Key? key, required this.principalCost})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 21.0,
      child: Row(children: [
        Expanded(
          child: Row(
            children: [
              const SizedBox(
                width: 5.0,
                height: 5.0,
                child: DetailCostConceptEllipse(
                  color: Color.fromARGB(255, 62, 231, 255),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              SizedBox(
                height: 20.0,
                child: DetailCostConceptTitle(
                  title:
                      AppLocalizations.of(context)!.detailPrincipalConceptTitle,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 32.0,
        ),
        SizedBox(
          height: 23.0,
          child: DetailMonthlyCostSubtitle(
            cost: (principalCost / 100).toString(),
          ),
        ),
      ]),
    );
  }
}
