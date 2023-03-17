import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/providers/error_provider/story_error_provider.dart';
import 'package:platonic/providers/story_provider/providers.dart';

class StoriesNotifier extends StateNotifier<AsyncValue<List<Story>>> {
  final Ref ref;
  final int activeFacultyState;
  StoriesNotifier(this.ref, this.activeFacultyState)
      : super(const AsyncValue<List<Story>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    if (activeFacultyState != -1) {
      try {
        final stories =
            await ref.read(storyViewmodelProvider).getShowStoriesFaculty();
        state = AsyncValue.data(stories);
      } on ErrorApp catch (e) {
        ref.read(storyErrorProvider.notifier).state = e;
      } catch (e) {
        state = AsyncValue.error(e, StackTrace.current);
      }
    }
  }

  Future<void> toggleStoryFavourite({required int storyId}) async {
    try {
      final storyFavourite = await ref
          .read(storyViewmodelProvider)
          .putToggleStoryFavourite(storyId: storyId);

      final favouriteStoriesIdState = ref.read(favouriteStoriesIdProvider);

      if (storyFavourite == false) {
        ref.read(favouriteStoriesIdProvider.notifier).state =
            favouriteStoriesIdState.where((story) => story != storyId).toList();
      } else {
        ref.read(favouriteStoriesIdProvider.notifier).state = [
          ...favouriteStoriesIdState,
          storyId
        ];
      }
    } on ErrorApp catch (e) {
      ref.read(storyErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> storyVisualization({required int storyId}) async {
    try {
      await ref
          .read(storyViewmodelProvider)
          .postStoryVisualization(storyId: storyId);
    } on ErrorApp catch (e) {
      ref.read(storyErrorProvider.notifier).state = e;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
