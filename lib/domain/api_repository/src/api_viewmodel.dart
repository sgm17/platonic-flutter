import 'package:platonic/domain/api_repository/src/api_data.dart';
import 'package:platonic/domain/api_repository/src/api_repository.dart';
import 'package:platonic/domain/user_repository/src/models/user_model.dart';
import 'package:platonic/domain/meet_repository/src/models/preferences_model.dart';
import 'package:platonic/domain/meet_repository/src/models/meet_model.dart';
import 'package:platonic/domain/chat_repository/src/models/chat_model.dart';

import '../../story_repository/src/models/models.dart';

class ApiViewmodel implements ApiRepository {
  @override
  Future<List<Chat>> fetchChats({required int userId}) {
    return Future.delayed(const Duration(seconds: 1), () {
      return chats;
    });
  }

  @override
  Future<List<Meet>> fetchMeets({required int userId}) {
    return Future.delayed(const Duration(seconds: 1), () {
      return meets;
    });
  }

  @override
  Future<User> fetchProfile({required int userId}) {
    return Future.delayed(const Duration(seconds: 1), () {
      return user;
    });
  }

  @override
  Future<HomeStory> fetchStories({int? universityId}) {
    return Future.delayed(const Duration(seconds: 1), () {
      return HomeStory(
          lastStoryIdsPerUniversity: apiLastStoriesPerUni,
          university: apiStories
              .where((customApi) => customApi.university.id == universityId)
              .toList()[0]
              .university,
          stories: apiStories
              .where((customApi) => customApi.university.id == universityId)
              .map((customApi) => customApi.stories as Story)
              .toList());
    });
  }

  @override
  Future postStory({required PostStory story}) {
    return Future.delayed(const Duration(seconds: 1), () => 1);
  }

  @override
  Future startSearch({required Preferences preferences}) {
    return Future.delayed(const Duration(seconds: 1), () => 1);
  }
}
