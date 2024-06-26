import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:platonic/screens/detail_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

/* Group firstmonrh
    Autogenerated by FlutLab FTF Generator
  */
class DetailFirstMonth extends StatelessWidget {
  final int rentAdvance;

  const DetailFirstMonth({Key? key, required this.rentAdvance})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.0,
      child: Row(children: [
        Expanded(
          child: Row(
            children: [
              const SizedBox(
                width: 5.0,
                height: 5.0,
                child: DetailCostConceptEllipse(
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              SizedBox(
                height: 20.0,
                child: DetailCostConceptTitle(
                  title: AppLocalizations.of(context)!
                      .detailFirstMonthConceptTitle,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 32.0,
        ),
        SizedBox(
          height: 23.0,
          child: DetailMonthlyCostSubtitle(
            cost: (rentAdvance / 100).toString(),
          ),
        ),
      ]),
    );
  }
}
