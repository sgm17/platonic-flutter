import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/university_provider/university_provider.dart';
import '../../../domain/story_repository/src/models/models.dart';
import '../../../providers/shared_preferences_provider/shared_preferences_viewmodel_provider.dart';
import '../../../providers/story_provider/story_provider.dart';
import 'story_item.dart';

class StoryScroll extends ConsumerWidget {
  const StoryScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storyProvider = ref.watch(storyNotifierProvider);
    final universities = ref.watch(universityProvider);
    final sharedPreferencesViewmodel =
        ref.watch(sharedPreferencesViewmodelProvider);

    return storyProvider.when(
        data: (HomeStory homeStory) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: universities.length,
            itemBuilder: (BuildContext context, int index) {
              final university = universities[index];
              final first = index == 0;
              final last = index == universities.length - 1;

              final newContent = universitiesWithNewContent(
                  sharedPreferencesViewmodel
                      .retrieveMyLatestStoryIdsPerUniversity(),
                  homeStory.lastStoryIdsPerUniversity);

              final contain = newContent.contains(university.id);

              final storyItemProperties =
                  StoryItemProperties(university, contain, first, last);

              return StoryItem(storyItemProperties: storyItemProperties);
            },
          );
        },
        error: ((error, stackTrace) => Text(error.toString())),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}

List<int> universitiesWithNewContent(
    List<LastStoryIdsPerUniversity> myRetrieveMyLatestStoryIdsPerUniversity,
    List<LastStoryIdsPerUniversity> apiLastStoryIdsPerUniversity) {
  return apiLastStoryIdsPerUniversity
      .where((e) {
        return myRetrieveMyLatestStoryIdsPerUniversity
                .firstWhere((element) => element.universityId == e.universityId,
                    orElse: () => const LastStoryIdsPerUniversity(
                        universityId: 0, lastStoryIdPerUniversity: 0))
                .lastStoryIdPerUniversity <
            e.lastStoryIdPerUniversity;
      })
      .map((e) => e.universityId)
      .toList();
}
