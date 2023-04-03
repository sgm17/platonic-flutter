import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/* Text 46months
    Autogenerated by FlutLab FTF Generator
  */
class PreferencesSliderMonthsTitle extends StatelessWidget {
  final double min, max;

  const PreferencesSliderMonthsTitle(
      {Key? key, required this.min, required this.max})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int minMonths = (min * 12).floor();
    final int maxMonths = (max * 12).floor();
    final String text;

    if (maxMonths == minMonths) {
      text = AppLocalizations.of(context)!.step2SliderRightTitle;
    } else {
      text = AppLocalizations.of(context)!
          .step2SliderRightTitleWithParam(maxMonths - minMonths);
    }

    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: const TextStyle(
          height: 1.3020000457763672,
          fontSize: 16.0,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 255, 255, 255),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}
