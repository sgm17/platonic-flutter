import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/insta_story_provider/insta_story_provider.dart';
import 'dart:async';

class InstaStoryBackground extends ConsumerStatefulWidget {
  const InstaStoryBackground({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _InstaStoryBackgroundState();
}

class _InstaStoryBackgroundState extends ConsumerState<InstaStoryBackground> {
  late StreamSubscription<bool> keyboardVisibilitySubscription;
  late bool isKeyboard;

  @override
  void initState() {
    super.initState();

    isKeyboard = false;

    keyboardVisibilitySubscription =
        KeyboardVisibilityController().onChange.listen((event) {
      final storyController = ref.watch(storyControllerProvider);

      if (event == true) {
        storyController.pause();
      } else {
        storyController.play();
      }

      setState(() {
        isKeyboard = event;
      });
    });
  }

  @override
  void dispose() {
    keyboardVisibilitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isKeyboard,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.black.withOpacity(.4),
      ),
    );
  }
}
