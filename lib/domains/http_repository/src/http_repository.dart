import 'package:platonic/domains/chat_repository/chat_repository.dart';
import 'package:platonic/domains/meet_repository/meet_repository.dart';
import 'package:platonic/domains/story_repository/src/models/models.dart';
import 'package:platonic/domains/university_repository/src/models/universities_list_model.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'dart:io';

abstract class HttpRepository {
  // Universities
  // GET /api/v1/universities - No authentication
  Future<List<UniversitiesList>> getIndexUniversitiesList();

  // Users
  // GET /api/v1/users - Authentication required
  Future<AppUser?> getIndexAppUser({required String tokenId});
  // POST /api/v1/users
  Future<AppUser> postCreateAppUser({required AppUser user});
  // PUT /api/v1/users/:id
  Future<AppUser> putUpdateAppUser({required AppUser user});
  // PUT /api/v1/users/cloudToken
  Future<bool> putUpdateCloudTokenAppUser({required String cloudToken});
  // DELETE /api/v1/users/:id
  Future<bool> deleteDestroyAppUser({required AppUser user});

  // Meets
  // GET /api/v1/meets
  Future<List<MeetsScroll>> getIndexMeetsScroll();
  // DELETE /api/v1/meets/:meet_id
  Future<bool> deleteDestroyMeetsScroll({required int meetId});

  // Stories
  // GET /api/v1/stories
  Future<List<StoriesScroll>> getIndexStories();
  // GET /api/v1/stories/:faculty_id
  Future<List<Story>> getShowStories({required int facultyId});
  // POST /api/v1/stories
  Future<Story> postCreateStory({required Story story});
  // PUT /api/v1/stories/:id/toggle_favourite
  Future<bool> putFavouriteStory({required int storyId});
  // DESTROY /api/v1/stories/:id
  Future<bool> deleteDestroyStory({required int storyId});

  // Conversations
  // GET /api/v1/conversations
  Future<List<Conversation>> getIndexConversations();

  // Visualizations
  // POST /api/v1/visualizations
  Future<bool> postCreateVisualization({required int storyId});

  // Images
  // POST /api/v1/image
  Future<String> postCreateImage({required File file});
  Future<List<String>> postCreateMultipleImages({required List<File> files});
}
