import '../../chat_repository/src/models/models.dart';
import '../../meet_repository/src/models/models.dart';
import '../../story_repository/src/models/models.dart';
import '../../user_repository/src/models/models.dart';

abstract class ApiRepository {
  Future<List<Chat>> fetchChats({required int userId});
  Future<List<Meet>> fetchMeets({required int userId});
  Future<User> fetchProfile({required int userId});
  Future<dynamic> postStory({required PostStory story});
  Future<dynamic> startSearch({required Preferences preferences});
}

class PostStoryRes {
  final Story story;
  final LastStoryIdsPerUniversity lastStoryIdsPerUniversity;

  PostStoryRes(this.story, this.lastStoryIdsPerUniversity);
}
