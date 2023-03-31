import 'package:platonic/domains/flat_repository/src/models/models.dart';
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
  Future<AppUser?> getIndexAppUser();
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
  // POST /api/v1/stories/:story_id/visualizations
  Future<bool> postCreateVisualization({required int storyId});
  // DESTROY /api/v1/stories/:id
  Future<bool> deleteDestroyStory({required int storyId});

  // Address
  // GET https://photon.komoot.io/api/?q=text&limit=1
  Future<List<PlaceModel>> getIndexAddress({required String address});

  // Flats
  // GET /api/v1/flats/index_home
  Future<FlatHomeModel?> getIndexHomeFlat();
  // GET /api/v1/flats
  Future<List<FlatsScrollModel>> getIndexFlats();
  // GET /api/v1/flats/flat_id
  Future<FlatModel> getShowFlat({required int flatId});
  // POST /api/v1/flats
  Future<FlatsScrollModel> postCreateFlat({required FlatModel flat});
  // POST /api/v1/flats/flat_id/add_remove_tenant
  Future<List<AppUser>> postAddRemoveTenant(
      {required int flatId, required String tenantEmail});
  // POST /api/v1/flats/flat_id/bookmark
  Future<bool> postBookmarkFlat({required int flatId});
  // PUT /api/v1/flats/flat_id
  Future<FlatsScrollModel> putUpdateFlat({required FlatModel flat});
  // DELETE /api/v1/flats/flat_id
  Future<void> deleteDestroyFlat({required int flatId});

  // Images
  // POST /api/v1/images
  Future<String> postCreateImage({required File file});
  // POST /api/v1/images/create_multiple
  Future<List<String>> postCreateMultipleImages({required List<File> files});
}
