import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/domains/story_repository/src/story_repository.dart';
import 'package:platonic/providers/http_provider/providers.dart';

class StoryViewmodel implements StoryRepository {
  final Ref ref;

  StoryViewmodel({required this.ref});
  @override
  Future<List<StoriesScroll>> getStoriesScroll() {
    return ref.read(httpViewmodelProvider).getIndexStoriesScroll();
  }

  @override
  Future<List<Story>> getStories({required int facultyId}) {
    return ref.read(httpViewmodelProvider).getShowStories(facultyId: facultyId);
  }

  @override
  Future<bool> toggleStoryFavourite({required int storyId}) {
    return ref
        .read(httpViewmodelProvider)
        .postToggleFavouriteStory(storyId: storyId);
  }

  @override
  Future<Story> postStory({required Story story}) {
    return ref.read(httpViewmodelProvider).postCreateStory(story: story);
  }
}
