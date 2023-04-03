import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/* Text monthly
    Autogenerated by FlutLab FTF Generator
  */
class FlatScrollMonthlyPrice extends StatelessWidget {
  final int rentPricePerMonthInCents;

  const FlatScrollMonthlyPrice(
      {Key? key, required this.rentPricePerMonthInCents})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        text: TextSpan(
          style: const TextStyle(
            fontSize: 14.0,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w500,
            color: Colors.black,

            /* letterSpacing: 0.0, */
          ),
          children: [
            const TextSpan(
              text: '''€''',
              style: TextStyle(
                fontSize: 8.0,
                color: Color.fromARGB(255, 63, 141, 253),

                /* letterSpacing: null, */
              ),
            ),
            TextSpan(
              text: ''' ${rentPricePerMonthInCents / 100} ''',
            ),
            TextSpan(
              text: AppLocalizations.of(context)!.flatHomePerMonthText,
              style: const TextStyle(
                fontSize: 8.0,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,

                /* letterSpacing: null, */
              ),
            )
          ],
        ));
  }
}
