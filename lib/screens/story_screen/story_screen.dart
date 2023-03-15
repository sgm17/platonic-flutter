import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/chat_provider/providers.dart';
import 'package:platonic/providers/error_provider/story_error_provider.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/screens/error_dialog/error_dialog/error_dialog.dart';
import 'package:platonic/screens/story_screen/widgets/story_viewers.dart';
import 'package:platonic/screens/story_screen/widgets/widgets.dart';
import 'package:story_view/story_view.dart';
import 'package:flutter/scheduler.dart';
import 'dart:async';
import 'dart:ffi';

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
    final storyErrorState = ref.watch(storyErrorProvider);

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
    final storyItems = [
      StoryItem(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: StoryViewers(
                  totalViewers: 100,
                  viewers: [
                    'https://vz.cnwimg.com/wp-content/uploads/2020/08/Corinna-Kopf.jpg',
                    'https://vz.cnwimg.com/wp-content/uploads/2020/08/Corinna-Kopf.jpg',
                    'https://vz.cnwimg.com/wp-content/uploads/2020/08/Corinna-Kopf.jpg',
                    'https://vz.cnwimg.com/wp-content/uploads/2020/08/Corinna-Kopf.jpg',
                    'https://vz.cnwimg.com/wp-content/uploads/2020/08/Corinna-Kopf.jpg',
                  ],
                ),
              ),
            ],
          ),
          duration: Duration(seconds: 100))
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 26, 29),
      // body: storiesState.when(
      //   data: (stories) {

      // final storyItems = stories
      //     .map((story) => StoryItem(
      //         StoryViewItem(
      //           story: story,
      //           focusNode: focusNode,
      //         ),
      //         duration: const Duration(milliseconds: 5000)))
      //     .toList();
      body: SafeArea(
          child: Stack(
        children: [
          StoryView(
            onStoryShow: (value) {
              // final index = storyItems.indexOf(value);
              // final story = stories.elementAt(index);

              // print('Actual story index: $index');
              // SchedulerBinding.instance.addPostFrameCallback((_) {
              //   ref.read(storyViewIdProvider.notifier).state = story.id;
              // });
            },
            controller: controller,
            inline: true,
            onComplete: () => Navigator.pop(context),
            onVerticalSwipeComplete: (direction) {
              // switch (direction) {
              //   case Direction.down:
              //     Navigator.pop(context);
              //     break;
              //   case Direction.up:
              //     final storyCreator = stories.firstWhere(
              //         (s) => s.id == ref.read(storyViewIdProvider));
              //     final alreadyConversation = ref
              //         .read(chatProvider)
              //         .asData
              //         ?.value
              //         .map((e) => e.user)
              //         .contains(storyCreator.user);

              //     if (alreadyConversation != null && !alreadyConversation) {
              //       controller.pause();
              //       focusNode.requestFocus();
              //     }
              //     break;
              //   default:
              // }
            },
            storyItems: storyItems,
          ),
          // StoryFocusDetection(stories: stories, focusNode: focusNode)
        ],
        // ));
        //   },
        //   loading: () => const Center(
        //     child: CircularProgressIndicator(
        //       color: Color.fromARGB(255, 255, 255, 255),
        //     ),
        //   ),
        //   error: (error, stackTrace) {
        //     return Text(error.toString());
        //   },
      )),
    );
  }
}
