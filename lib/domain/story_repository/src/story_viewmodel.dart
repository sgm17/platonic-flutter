import 'package:platonic/domain/story_repository/story_repository.dart';
import '../../api_repository/src/api_data.dart';
import 'models/models.dart';

class StoryViewmodel implements StoryRepository {
  @override
  Future<HomeStory> retrieveInitial() {
    return Future.delayed(const Duration(seconds: 1), () {
      return HomeStory(
          lastStoryIdsPerUniversity: apiLastStoriesPerUni,
          university: null,
          stories: []);
    });
  }

  @override
  Future<HomeStory> retrieveStories(int universityId) {
    return Future.delayed(const Duration(seconds: 1), () {
      return HomeStory(
          lastStoryIdsPerUniversity: apiLastStoriesPerUni,
          university: apiStories
              .firstWhere(
                  (customApi) => customApi.university.id == universityId)
              .university,
          stories: apiStories
              .firstWhere(
                  (customApi) => customApi.university.id == universityId)
              .stories
              .map((story) => story)
              .toList());
    });
  }
}
