import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'widgets/widgets.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: const StoryScroll(),
            height: 60 + 8 + 13 + 32 + .5,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: AppColors.grey, width: .5))),
          ),
          Expanded(
            child: Container(
              color: AppColors.strongWhite,
            ),
          )
        ]);
  }
}
