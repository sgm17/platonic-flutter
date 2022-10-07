import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/story_repository/story_repository.dart';

final storyViewModelProvider = Provider<StoryViewmodel>((ref) {
  return StoryViewmodel();
});
