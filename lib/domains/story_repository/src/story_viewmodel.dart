import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/domains/university_repository/src/models/faculty_model.dart';
import 'package:platonic/stories_api.dart';
import 'package:platonic/domains/story_repository/src/story_repository.dart';

class StoryViewmodel implements StoryRepository {
  @override
  Future<List<StoriesScroll>> retrieveStoriesScroll() {
    return Future.delayed(const Duration(seconds: 1), () => storiesScroll);
  }

  @override
  Future<List<Story>> retrieveStories({required Faculty faculty}) {
    return Future.delayed(const Duration(seconds: 1),
        () => stories.where((e) => e.faculty == faculty).toList());
  }
}
