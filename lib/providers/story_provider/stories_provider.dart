import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/providers/story_provider/providers.dart';

final storiesProvider =
    StateNotifierProvider<StoriesNotifier, AsyncValue<List<Story>>>((ref) {
  return StoriesNotifier(ref);
});
