import 'package:platonic/screens/register_detail_screen/widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/* Group age_input
    Autogenerated by FlutLab FTF Generator
  */
class AgeInput extends StatelessWidget {
  const AgeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.0,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          width: 50.0,
          height: 38.0,
          child: PersonalTitle(
            title: AppLocalizations.of(context)!.registerDetailPersonalAgeTitle,
          ),
        ),
        const SizedBox(
          width: 258.0,
          height: 38.0,
          child: PersonalAgeInput(),
        ),
      ]),
    );
  }
}
