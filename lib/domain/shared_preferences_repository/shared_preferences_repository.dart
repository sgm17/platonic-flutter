import '../story_repository/src/models/models.dart';

abstract class SharedPreferencesRepository {
  void writeMyLatestStoryIdsPerUniversity(
      List<LastStoryIdsPerUniversity> myLastStoryIdsPerUniversity);
  List<LastStoryIdsPerUniversity> retrieveMyLatestStoryIdsPerUniversity();
}
