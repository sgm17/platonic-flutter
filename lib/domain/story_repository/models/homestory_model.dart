import '../../university_repository/models/models.dart';
import 'models.dart';

class HomeStory {
  final List<LastStoryIdsPerUniversity> lastStoryIdsPerUniversity;
  final University? university;
  final List<Story> stories;

  HomeStory(this.lastStoryIdsPerUniversity, this.university, this.stories);
}
