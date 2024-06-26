import 'package:flutter/material.dart';
import 'package:platonic/screens/home_screen/widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/* Group stories
    Autogenerated by FlutLab FTF Generator
  */
class StoriesContainer extends StatelessWidget {
  const StoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 163.0,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 18.0,
          child: HomeTitle(
            title: AppLocalizations.of(context)!.homeStoriesTitle,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const SizedBox(
          height: 135.0,
          child: StoriesScroll(),
        ),
      ]),
    );
  }
}
