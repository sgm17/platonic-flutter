import 'package:platonic/domains/university_repository/src/models/models.dart';

import 'models/models.dart';

abstract class StoryRepository {
  Future<List<StoriesScroll>> retrieveStoriesScroll();
  Future<List<Story>> retrieveStories({required Faculty faculty});
}
