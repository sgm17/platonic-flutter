import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/story_repository/src/models/models.dart';
import 'package:platonic/domain/story_repository/story_repository.dart';

final storyNotifierProvider =
    StateNotifierProvider<StoryNotifier, AsyncValue<HomeStory>>((ref) {
  return StoryNotifier(ref.read);
});

final storyViewModelProvider = Provider<StoryViewmodel>((ref) {
  return StoryViewmodel();
});

class StoryNotifier extends StateNotifier<AsyncValue<HomeStory>> {
  final Reader _read;
  late HomeStory _homeStory;

  StoryNotifier(this._read) : super(const AsyncValue.loading()) {
    _initializeStoryNotifier();
  }

  Future<void> _initializeStoryNotifier() async {
    final homeStory = await _read(storyViewModelProvider).retrieveInitial();
    state = AsyncValue.data(homeStory);
  }
}
