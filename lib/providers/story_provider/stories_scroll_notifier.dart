import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/story_provider/providers.dart';
import 'package:platonic/domains/story_repository/story_repository.dart';

class StoriesScrollNotifier
    extends StateNotifier<AsyncValue<List<StoriesScroll>>> {
  final Ref ref;

  StoriesScrollNotifier(this.ref)
      : super(const AsyncValue<List<StoriesScroll>>.loading()) {
    ref.read(storyViewmodelProvider).getStoriesScroll().then((stories) {
      state = AsyncValue.data(stories);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }

  Future<void> createStory(Story story) async {
    final newStory =
        await ref.read(storyViewmodelProvider).postStory(story: story);

    state = state.when(
        data: (data) {
          return AsyncValue.data(data
              .map((e) => e.faculty == story.faculty
                  ? StoriesScroll(
                      id: newStory.id,
                      user: newStory.user,
                      faculty: newStory.faculty)
                  : e)
              .toList());
        },
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: AsyncValue.loading);
  }
}
