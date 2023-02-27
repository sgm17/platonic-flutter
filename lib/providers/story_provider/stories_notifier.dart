import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/providers/story_provider/providers.dart';

class StoriesNotifier extends StateNotifier<AsyncValue<List<Story>>> {
  final Ref ref;

  StoriesNotifier(this.ref) : super(const AsyncValue<List<Story>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    ref
        .read(storyViewmodelProvider)
        .getStories(facultyId: ref.read(activeFacultyProvider).id)
        .then((stories) {
      state = AsyncValue.data(stories);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }

  Future<void> toggleStoryFavourite(int storyId) async {
    await ref
        .read(storyViewmodelProvider)
        .toggleStoryFavourite(storyId: storyId);

    state = state.when(
        data: (List<Story> stories) => AsyncValue.data(stories
            .map((e) => e.id == storyId ? e.copyWith(favourite: true) : e)
            .toList()),
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: AsyncValue.loading);
  }

  Future<void> createStory(Story story) async {
    await ref.read(storyViewmodelProvider).postStory(story: story);

    state = state.when(
        data: (data) {
          return AsyncData([story, ...data]);
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: AsyncValue.loading);
  }
}
