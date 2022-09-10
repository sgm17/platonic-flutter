import 'package:platonic/domain/story_repository/story_repository.dart';
import '../../api_data.dart';
import 'models/models.dart';

class StoryViewmodel implements StoryRepository {
  @override
  Future<HomeStory> retrieveInitial() async {
    return Future.delayed(const Duration(seconds: 1), () {
      return HomeStory(
          lastStoryIdsPerUniversity: apiLastStoriesPerUni,
          university: null,
          stories: []);
    });
  }

  @override
  Future<HomeStory> retrieveStories(int universityId) async {
    return Future.delayed(const Duration(seconds: 1), () {
      final apiStoryPerUniversityIndex = apiStories.indexWhere((apiStory) {
        return apiStory.university.id == universityId;
      });
      return HomeStory(
          lastStoryIdsPerUniversity: apiLastStoriesPerUni,
          university: apiStories[apiStoryPerUniversityIndex].university,
          stories: apiStories[apiStoryPerUniversityIndex].stories);
    });
  }
}
