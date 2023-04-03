import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/* Text woman_option
    Autogenerated by FlutLab FTF Generator
  */
class WomanOption extends StatelessWidget {
  const WomanOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        AppLocalizations.of(context)!.settingsSexToMeetWomanText,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        style: const TextStyle(
          height: 1.153000036875407,
          fontSize: 12.0,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(255, 255, 255, 255),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}
