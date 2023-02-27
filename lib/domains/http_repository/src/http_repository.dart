import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'package:platonic/domains/meet_repository/meet_repository.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/domains/university_repository/src/models/universities_list_model.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';

abstract class HttpRepository {
  // Universities
  // GET /api/v1/universities - No authentication
  Future<List<UniversitiesList>> getIndexUniversitiesList();

  // Users
  // GET /api/v1/users - Authentication required
  Future<AppUser?> getIndexAppUser({required String tokenId});
  // GET /api/v1/users/otherUid
  Future<AppUser> getShowOtherAppUser({required String otherUid});
  // POST /api/v1/users
  Future<AppUser> postCreateAppUser({required AppUser user});

  // Meets
  // GET /api/v1/meets
  Future<List<MeetsScroll>> getIndexMeetsScroll();

  // Stories
  // GET /api/v1/stories
  Future<List<StoriesScroll>> getIndexStoriesScroll();
  // GET /api/v1/stories/faculty_id
  Future<List<Story>> getShowStories({required int facultyId});
  // POST /api/v1/stories
  Future<Story> postCreateStory({required Story story});
  // POST /api/v1/stories/story_id/toggle_favourite
  Future<Story> postToggleFavouriteStory({required int storyId});

  // Conversations
  // GET /api/v1/conversations
  Future<List<Conversation>> getIndexConversations();
  // GET /api/v1/conversations/conversation_id
  Future<List<Message>> getShowConversationsMessages(
      {required int conversationId});
}
