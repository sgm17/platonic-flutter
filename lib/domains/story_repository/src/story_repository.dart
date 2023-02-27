import 'models/models.dart';

abstract class StoryRepository {
  Future<List<StoriesScroll>> getStoriesScroll();
  Future<List<Story>> getStories({required int facultyId});
  Future<Story> toggleStoryFavourite({required int storyId});
  Future<Story> postStory({required Story story});
}
