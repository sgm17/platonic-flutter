import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/domains/story_repository/src/story_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';
import 'package:platonic/providers/story_provider/providers.dart';

class StoryViewmodel implements StoryRepository {
  final Ref ref;

  StoryViewmodel({required this.ref});
  @override
  Future<List<StoriesScroll>> getIndexStoriesUniversity() {
    return ref.read(httpViewmodelProvider).getIndexStories();
  }

  @override
  Future<List<Story>> getShowStoriesFaculty() {
    final facultyId = ref.read(activeFacultyProvider).id;
    return ref.read(httpViewmodelProvider).getShowStories(facultyId: facultyId);
  }

  @override
  Future<Story> postCreateStoryFaculty({required Story story}) {
    return ref.read(httpViewmodelProvider).postCreateStory(story: story);
  }

  @override
  Future<bool> putToggleStoryFavourite({required int storyId}) {
    return ref.read(httpViewmodelProvider).putFavouriteStory(storyId: storyId);
  }
}
