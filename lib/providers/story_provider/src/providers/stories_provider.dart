import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/story_repository/src/models/models.dart';
import 'package:platonic/providers/story_provider/story_provider.dart';

final storiesProvider =
    StateNotifierProvider<StoriesNotifier, AsyncValue<List<Story>>>((ref) {
  final faculty = ref.watch(activeFacultyProvider);
  return StoriesNotifier(ref, faculty);
});
