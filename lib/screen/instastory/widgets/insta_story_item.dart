import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/insta_story_provider/insta_story_provider.dart';
import 'package:platonic/providers/university_provider/university_provider.dart';
import 'package:platonic/screen/home/widgets/story_scroll.dart';
import 'package:story_view/story_view.dart';
import '../../../domain/story_repository/src/models/models.dart';
import '../../../domain/university_repository/src/models/models.dart';
import 'dart:async';

import '../../../providers/shared_preferences_provider/shared_preferences_viewmodel_provider.dart';

enum StoryAction { play, pause }

class InstaStoryItem extends ConsumerStatefulWidget {
  const InstaStoryItem({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InstaStoryItemState();
}

class _InstaStoryItemState extends ConsumerState<InstaStoryItem> {
  @override
  void initState() {
    super.initState();

    ref.read(storyControllerProvider).playbackNotifier.listen((value) {
      switch (value) {
        case PlaybackState.play:
          ref.read(storyActionProvider.state).state = StoryAction.pause;
          break;
        case PlaybackState.pause:
          ref.read(storyActionProvider.state).state = StoryAction.play;
          break;
        case PlaybackState.next:
        case PlaybackState.previous:
          return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final sharedPreferencesViewmodel =
        ref.watch(sharedPreferencesViewmodelProvider);
    final universities = ref.watch(universityProvider);
    final homeStory = ref.watch(homeStoryProvider);
    final storyController = ref.watch(storyControllerProvider);

    final List<StoryItem> storyItems = homeStory.stories.map((Story story) {
      return StoryItem.text(
          title: story.body, backgroundColor: story.backgroundColor);
    }).toList();

    return StoryView(
      onStoryShow: (StoryItem storyItem) {
        final index = storyItems.indexOf(storyItem);

        Future.delayed(Duration.zero,
            () => ref.read(actualStoryIndexProvider.state).state = index);
      },
      onComplete: () {
        final maskedActiveContent = universitiesWithNewContent(
            sharedPreferencesViewmodel.retrieveMyLatestStoryIdsPerUniversity(),
            homeStory.lastStoryIdsPerUniversity);

        final nextUniId = nextUniversityId(
            actualUniversityId: homeStory.university!.id,
            maskedUniversityWithContent: maskedActiveContent,
            universities: universities);

        print("nextUniversityId: " + nextUniId.toString());

        ref.read(actualUniversityIdStateProvider.state).state = nextUniId;

        ref.read(actualStoryIndexProvider.state).state = 0;
      },
      controller: storyController,
      storyItems: storyItems,
      onVerticalSwipeComplete: (Direction? direction) {
        if (direction == Direction.down) {
          Navigator.of(context).pop();
        }
      },
    );
  }
}

int nextUniversityId(
    {required int actualUniversityId,
    required List<int> maskedUniversityWithContent,
    required List<University> universities}) {
  if (!maskedUniversityWithContent.contains(actualUniversityId)) return -1;

  final actualUniversityIndex = universities
      .indexWhere((university) => university.id == actualUniversityId);

  var validUniversities = universities.where((university) {
    final index = universities.indexOf(university);

    return index > actualUniversityIndex &&
        maskedUniversityWithContent.contains(university.id);
  }).toList();

  return validUniversities.isEmpty ? -1 : validUniversities.first.id;
}
