import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/screens/story_screen/widgets/widgets.dart';
import 'package:story_view/story_view.dart';
import 'dart:async';

class StoryScreen extends ConsumerStatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  StoryScreenState createState() => StoryScreenState();
}

class StoryScreenState extends ConsumerState<StoryScreen> {
  late final FocusNode focusNode;
  late final StoryController controller;
  late final StreamSubscription<PlaybackState>? streamSubscription;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    controller = StoryController();
    streamSubscription = controller.playbackNotifier.listen(playbackChange);
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();
    streamSubscription?.cancel();
    super.dispose();
  }

  void playbackChange(PlaybackState state) {
    switch (state) {
      case PlaybackState.play:
        if (focusNode.hasFocus) {
          focusNode.unfocus();
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    final storiesState = ref.watch(storiesProvider);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 26, 29),
      body: storiesState.when(
        data: (stories) {
          final storyItems = stories
              .map((story) => StoryItem(
                  StoryViewItem(
                    story: story,
                    focusNode: focusNode,
                  ),
                  duration: const Duration(milliseconds: 5000)))
              .toList();
          return SafeArea(
              child: Stack(
            children: [
              StoryView(
                onStoryShow: (value) {
                  final index = storyItems.indexOf(value);
                  final story = stories.elementAt(index);

                  print('Actual story index: $index');
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    ref.read(storyViewIdProvider.notifier).state = story.id;
                  });
                },
                controller: controller,
                inline: true,
                onComplete: () => Navigator.pop(context),
                onVerticalSwipeComplete: (direction) {
                  switch (direction) {
                    case Direction.down:
                      Navigator.pop(context);
                      break;
                    case Direction.up:
                      if (!stories
                          .firstWhere(
                              (s) => s.id == ref.read(storyViewIdProvider))
                          .alreadyConversation) {
                        controller.pause();
                        focusNode.requestFocus();
                      }
                      break;
                    default:
                  }
                },
                storyItems: storyItems,
              ),
              StoryFocusDetection(stories: stories, focusNode: focusNode)
            ],
          ));
        },
        loading: () => const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        error: (error, stackTrace) {
          return Text(error.toString());
        },
      ),
    );
  }
}
