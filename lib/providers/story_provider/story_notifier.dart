import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/story_repository/src/models/models.dart';
import 'story_provider.dart';

class StoryNotifier extends StateNotifier<AsyncValue<HomeStory>> {
  final Reader _read;

  StoryNotifier(this._read) : super(const AsyncValue.loading()) {
    _initializeStoryNotifier();
  }

  Future<void> _initializeStoryNotifier() async {
    final homeStory = await _read(storyViewModelProvider).retrieveInitial();
    state = AsyncValue.data(homeStory);
  }

  Future<HomeStory> storiesPerUniversityId(int universityId) async {
    final homeStory =
        await _read(storyViewModelProvider).retrieveStories(universityId);
    state = AsyncValue.data(homeStory);
    return homeStory;
  }
}
