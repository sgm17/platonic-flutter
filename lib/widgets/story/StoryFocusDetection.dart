import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/story_repository/src/models/models.dart';
import 'package:platonic/providers/story_provider/src/providers/favourite_stories_provider.dart';
import 'package:platonic/providers/story_provider/src/providers/story_view_index_provider.dart';
import 'package:flutter/material.dart';

class StoryFocusDetection extends ConsumerWidget {
  const StoryFocusDetection(
      {super.key, required this.stories, required this.focusNode});

  final List<Story> stories;
  final FocusNode focusNode;

  void toggleTextField() {
    focusNode.requestFocus();
  }

  void toggleFavourite(WidgetRef ref, int index) {
    final favouriteStoriesState = ref.read(favouriteStoriesProvider);

    if (favouriteStoriesState.contains(stories[index])) {
      ref.read(favouriteStoriesProvider.notifier).state = favouriteStoriesState
          .where((story) => story != stories[index])
          .toList();
    } else {
      ref.read(favouriteStoriesProvider.notifier).state = [
        ...favouriteStoriesState,
        stories[index]
      ];
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(storyViewIndexProvider);

    return Column(
      children: [
        Expanded(
          child: IgnorePointer(
            ignoring: true,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Row(
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: toggleTextField,
                  child: Container(
                    height: 48.0,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              GestureDetector(
                onTap: () => toggleFavourite(ref, index),
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  color: Colors.transparent,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
