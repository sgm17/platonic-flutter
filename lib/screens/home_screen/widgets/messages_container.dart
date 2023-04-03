import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

/* Group messages
    Autogenerated by FlutLab FTF Generator
  */
class MessagesContainer extends StatelessWidget {
  const MessagesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 18.0,
        child: HomeTitle(
          title: AppLocalizations.of(context)!.homeMessagesTitle,
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      const MessagesScroll(),
    ]);
  }
}
