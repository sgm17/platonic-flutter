import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

/* Text bathroomtitle
    Autogenerated by FlutLab FTF Generator
  */
class DetailPropertyBuiltTitle extends StatelessWidget {
  final int built;

  const DetailPropertyBuiltTitle({Key? key, required this.built})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        text: TextSpan(
          style: const TextStyle(
            height: 1.3020000457763672,
            fontSize: 12.0,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 245, 245, 245),

            /* letterSpacing: 0.0, */
          ),
          children: [
            TextSpan(
              text: AppLocalizations.of(context)!.detailAmenitiesBuilt(built),
            ),
            const TextSpan(
              text: '''2''',
              style: TextStyle(

                  /* letterSpacing: null, */
                  ),
            )
          ],
        ));
  }
}
