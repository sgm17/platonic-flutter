import '../../domain/story_repository/src/models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'story_notifier.dart';

final storyNotifierProvider =
    StateNotifierProvider<StoryNotifier, AsyncValue<HomeStory>>((ref) {
  return StoryNotifier(ref.read);
});
