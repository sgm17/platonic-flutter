import 'models/models.dart';

abstract class StoryRepository {
  Future<HomeStory> retrieveInitial();
  Future<HomeStory> retrieveStories(int universityId);
}
