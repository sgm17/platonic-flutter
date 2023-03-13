import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/domains/story_repository/story_repository.dart';

class StoriesScrollNotifier
    extends StateNotifier<AsyncValue<List<StoriesScroll>>> {
  final Ref ref;

  StoriesScrollNotifier(this.ref)
      : super(const AsyncValue<List<StoriesScroll>>.loading()) {
    ref
        .read(storyViewmodelProvider)
        .getIndexStoriesUniversity()
        .then((stories) {
      state = AsyncValue.data(stories);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }

  Future<void> createStory(Story story) async {
    final newStory = await ref
        .read(storyViewmodelProvider)
        .postCreateStoryFaculty(story: story);

    state = state.when(
      data: (data) {
        final updatedData = data.map((e) {
          if (e.faculty.id == story.faculty.id) {
            return StoriesScroll(
                id: newStory.id,
                user: newStory.user,
                faculty: newStory.faculty,
                backgroundGradientIndex: newStory.backgroundGradientIndex);
          } else {
            return e;
          }
        }).toList();

        return AsyncData(updatedData);
      },
      error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
      loading: () => const AsyncValue.loading(),
    );
  }
}
