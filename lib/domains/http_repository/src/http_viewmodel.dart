import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/chat_repository/src/models/conversation_model.dart';
import 'package:platonic/domains/chat_repository/src/models/message_model.dart';
import 'package:platonic/domains/http_repository/src/http_repository.dart';
import 'package:platonic/domains/meet_repository/src/models/meets_scroll_model.dart';
import 'package:platonic/domains/story_repository/src/models/stories_scroll_model.dart';
import 'package:platonic/domains/story_repository/src/models/story_model.dart';
import 'package:platonic/domains/university_repository/src/models/universities_list_model.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpViewmodel implements HttpRepository {
  final String? tokenId;

  HttpViewmodel({required this.tokenId});

  @override
  Future<List<UniversitiesList>> getIndexUniversitiesList() async {
    final headers = {
      'Content-Type': 'application/json',
    };
    final response = await http.get(Uri.parse("$API_ENDPOINT/universities"),
        headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);
      return data.map((e) => UniversitiesList.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load the universities');
    }
  }

  @override
  Future<AppUser?> getIndexAppUser({required String tokenId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response =
        await http.get(Uri.parse("$API_ENDPOINT/users"), headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUser.fromJson(data);
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<AppUser> getShowOtherAppUser({required String otherUid}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.get(Uri.parse("$API_ENDPOINT/users/$otherUid"),
        headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUser.fromJson(data);
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<AppUser> postCreateAppUser({required AppUser user}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.post(Uri.parse("$API_ENDPOINT/users"),
        headers: headers, body: jsonEncode(user.toJson()));

    if (response.statusCode == 201) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUser.fromJson(data);
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<List<MeetsScroll>> getIndexMeetsScroll() async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response =
        await http.get(Uri.parse("$API_ENDPOINT/meets"), headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);
      return data.map((e) => MeetsScroll.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<List<StoriesScroll>> getIndexStoriesScroll() async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response =
        await http.get(Uri.parse("$API_ENDPOINT/stories"), headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await json.decode(response.body);
      return data.map((e) => StoriesScroll.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<List<Story>> getShowStories({required int facultyId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http
        .get(Uri.parse("$API_ENDPOINT/stories/$facultyId"), headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);
      return data.map((e) => Story.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<Story> postCreateStory({required Story story}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.post(Uri.parse("$API_ENDPOINT/stories"),
        headers: headers, body: jsonEncode(story.toJson()));
    if (response.statusCode == 201) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      print(data);
      return Story.fromJson(data);
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<bool> postToggleFavouriteStory({required int storyId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.post(
        Uri.parse("$API_ENDPOINT/stories/$storyId/toggle_favourite"),
        headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data['favourite'] as bool;
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<List<Conversation>> getIndexConversations() async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.get(Uri.parse("$API_ENDPOINT/conversations"),
        headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);
      return data.map((e) => Conversation.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<List<Message>> getShowConversationsMessages(
      {required int conversationId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.get(
        Uri.parse("$API_ENDPOINT/conversations/$conversationId"),
        headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);
      return data.map((e) => Message.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load the user');
    }
  }
}
