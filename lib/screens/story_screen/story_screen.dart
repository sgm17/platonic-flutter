import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/conversations_provider.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/providers/error_provider/story_error_provider.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/error_dialog/delete_dialog/delete_dialog.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/screens/story_screen/widgets/widgets.dart';
import 'package:story_view/story_view.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class StoryScreen extends ConsumerStatefulWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  StoryScreenState createState() => StoryScreenState();
}

class StoryScreenState extends ConsumerState<StoryScreen> {
  late final FocusNode focusNode;
  late final GlobalKey popupMenuButtonKey;
  late final StoryController controller;
  late final StreamSubscription<PlaybackState>? streamSubscription;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    popupMenuButtonKey = GlobalKey();
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
    final storyErrorState = ref.watch(storyErrorProvider);
    final userState = ref.read(appUserProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (storyErrorState != null) {
        showDialog(
            context: context,
            builder: (context) => ErrorDialog(
                  error: storyErrorState.code,
                ));

        ref.read(storyErrorProvider.notifier).state = null;
      }
    });

    Future<void> toggleDeleteDialog({required int storyId}) async {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showDialog(
            context: context,
            builder: (context) => DeleteDialog(
                error: 'storydeletedialog',
                toggleDelete: () async {
                  controller.pause();
                  await ref
                      .read(storiesProvider.notifier)
                      .deleteStory(storyId: storyId);
                  Navigator.pop(context);
                }));
      });
    }

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 26, 29),
        body: storiesState.when(
          data: (stories) {
            final storyItems = stories.map((story) {
              return StoryItem(
                  StoryViewItem(
                    story: story,
                    focusNode: focusNode,
                    popupMenuButtonKey: popupMenuButtonKey,
                  ),
                  duration: const Duration(milliseconds: 5000));
            }).toList();
            return SafeArea(
                child: Stack(
              children: [
                StoryView(
                  onStoryShow: (value) async {
                    final index = storyItems.indexOf(value);
                    final story = stories.elementAt(index);
                    print('Actual story index: $index');

                    SchedulerBinding.instance.addPostFrameCallback((_) {
                      ref.read(storyViewIdProvider.notifier).state = story.id;
                    });

                    if (userState.id != story.user.id) {
                      await ref
                          .read(storiesProvider.notifier)
                          .storyVisualization(storyId: story.id);
                    }
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
                        final story = stories[ref.read(storyViewIdProvider)];

                        final alreadyConversation = ref
                            .read(conversationsProvider)
                            .any((e) =>
                                e.user1.id == story.user.id &&
                                    e.user2.id == userState.id ||
                                e.user1.id == userState.id &&
                                    e.user2.id == story.user.id);

                        if (!alreadyConversation) {
                          controller.pause();
                          focusNode.requestFocus();
                        }
                        break;
                      default:
                    }
                  },
                  storyItems: storyItems,
                ),
                StoryFocusDetection(
                  controller: controller,
                  stories: stories,
                  focusNode: focusNode,
                  popupMenuButtonKey: popupMenuButtonKey,
                  toggleDeleteDialog: toggleDeleteDialog,
                )
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
        ));
  }
}
