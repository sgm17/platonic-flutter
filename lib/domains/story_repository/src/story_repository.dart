import 'models/models.dart';

abstract class StoryRepository {
  Future<List<StoriesScroll>> getIndexStoriesUniversity();
  Future<List<Story>> getShowStoriesFaculty({required int facultyId});
  Future<Story> postCreateStoryFaculty({required Story story});
  Future<bool> putToggleStoryFavourite({required int storyId});
  Future<bool> postStoryVisualization({required int storyId});
}
