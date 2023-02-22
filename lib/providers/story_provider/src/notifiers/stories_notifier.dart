import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/story_repository/src/models/models.dart';
import 'package:platonic/domain/university_repository/src/models/models.dart';
import '../providers/providers.dart';

class StoriesNotifier extends StateNotifier<AsyncValue<List<Story>>> {
  final Ref ref;
  final Faculty faculty;

  StoriesNotifier(this.ref, this.faculty)
      : super(const AsyncValue<List<Story>>.loading()) {
    ref
        .watch(storyViewmodelProvider)
        .retrieveStories(faculty: faculty)
        .then((stories) {
      state = AsyncValue.data(stories);
    }).catchError((e) {
      state = AsyncValue.error(e, StackTrace.current);
    });
  }

  Future<void> makeStoryFavourite(Story story) async {
    state = state.when(
        data: (List<Story> stories) => AsyncValue.data(stories
            .map((e) => e == story ? e.copyWith(favourite: true) : e)
            .toList()),
        error: (error, stackTrace) => AsyncValue.error(error, stackTrace),
        loading: AsyncValue.loading);
  }
}
