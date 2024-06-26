import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/* Text Retry
    Autogenerated by FlutLab FTF Generator
  */
class RetryText extends StatelessWidget {
  const RetryText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.error_dialog_retry,
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: const TextStyle(
        height: 1.1530000141688757,
        fontSize: 14.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 63, 141, 253),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
