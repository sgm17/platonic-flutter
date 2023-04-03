import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class DetailTenantsDisclaimerText extends StatelessWidget {
  const DetailTenantsDisclaimerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.detailDisclaimerText,
      overflow: TextOverflow.visible,
      textAlign: TextAlign.center,
      style: const TextStyle(
        height: 1.152999997138977,
        fontSize: 16.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w300,
        color: Color.fromARGB(255, 130, 130, 132),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
