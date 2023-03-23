import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/chat_repository/src/models/conversation_model.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/http_repository/src/http_repository.dart';
import 'package:platonic/domains/meet_repository/src/models/meets_scroll_model.dart';
import 'package:platonic/domains/story_repository/src/models/stories_scroll_model.dart';
import 'package:platonic/domains/story_repository/src/models/story_model.dart';
import 'package:platonic/domains/university_repository/src/models/universities_list_model.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

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
      throw const ErrorApp(code: 'httpindexuniversities');
    }
  }

  @override
  Future<AppUser?> getIndexAppUser() async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response =
        await http.get(Uri.parse("$API_ENDPOINT/users"), headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUser.fromJson(data);
    } else if (response.statusCode == 422) {
      return AppUser.emptyUser;
    } else {
      throw const ErrorApp(code: 'httpindexappuser');
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
      throw const ErrorApp(code: 'httpcreateappuser');
    }
  }

  @override
  Future<AppUser> putUpdateAppUser({required AppUser user}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.put(Uri.parse("$API_ENDPOINT/users/${user.id}"),
        headers: headers, body: jsonEncode(user.toJson()));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUser.fromJson(data);
    } else {
      throw const ErrorApp(code: 'httpupdateappuser');
    }
  }

  @override
  Future<bool> putUpdateCloudTokenAppUser({required String cloudToken}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.put(Uri.parse("$API_ENDPOINT/users/cloudToken"),
        headers: headers, body: jsonEncode({'cloud_token': cloudToken}));

    if (response.statusCode == 201) {
      await jsonDecode(response.body);
      return true;
    } else {
      throw const ErrorApp(code: 'httpupdatecloudtokenappuser');
    }
  }

  @override
  Future<bool> deleteDestroyAppUser({required AppUser user}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http
        .delete(Uri.parse("$API_ENDPOINT/users/${user.id}"), headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data["destroyed"];
    } else {
      throw const ErrorApp(code: 'httpdestroyappuser');
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
      throw const ErrorApp(code: 'httpindexmeet');
    }
  }

  @override
  Future<bool> deleteDestroyMeetsScroll({required int meetId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.delete(Uri.parse("$API_ENDPOINT/meets/$meetId"),
        headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data["destroyed"];
    } else {
      throw const ErrorApp(code: 'httpdestroymeet');
    }
  }

  @override
  Future<List<StoriesScroll>> getIndexStories() async {
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
      throw const ErrorApp(code: 'httpindexstories');
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
      throw const ErrorApp(code: 'httpshowstories');
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
      return Story.fromJson(data);
    } else if (response.statusCode == 429) {
      throw const ErrorApp(code: 'httpspamtories');
    } else {
      throw const ErrorApp(code: 'httpcreatestories');
    }
  }

  @override
  Future<bool> putFavouriteStory({required int storyId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.put(
        Uri.parse("$API_ENDPOINT/stories/$storyId/toggle_favourite"),
        headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data['favourite'] as bool;
    } else {
      throw const ErrorApp(code: 'httpfavouritestories');
    }
  }

  @override
  Future<bool> deleteDestroyStory({required int storyId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http
        .delete(Uri.parse("$API_ENDPOINT/stories/$storyId"), headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data['destroyed'] as bool;
    } else {
      throw const ErrorApp(code: 'httpdeletestories');
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
      throw const ErrorApp(code: 'httpindexconversations');
    }
  }

  @override
  Future<bool> postCreateVisualization({required int storyId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.post(Uri.parse("$API_ENDPOINT/visualizations"),
        headers: headers, body: jsonEncode({'story_id': storyId}));

    if (response.statusCode == 201) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data["visualization"];
    } else {
      throw const ErrorApp(code: 'httpcreatevisualization');
    }
  }

  @override
  Future<String> postCreateImage({required File file}) async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('$API_ENDPOINT/images'),
    );
    request.headers['Authorization'] = 'Bearer $tokenId';
    request.files.add(
      await http.MultipartFile.fromPath(
        'image',
        file.path,
      ),
    );

    final response = await request.send();

    if (response.statusCode == 201) {
      final responseBody = await response.stream.bytesToString();
      final Map<String, dynamic> data = jsonDecode(responseBody);
      final name = data["name"];
      final format = data["format"];

      return "$API_ENDPOINT/images?name=$name&format=$format";
    } else {
      throw const ErrorApp(code: 'httpcreateimage');
    }
  }

  @override
  Future<List<String>> postCreateMultipleImages(
      {required List<File> files}) async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('$API_ENDPOINT/create_multiple'),
    );
    request.headers['Authorization'] = 'Bearer $tokenId';
    for (final file in files) {
      request.files.add(
        await http.MultipartFile.fromPath(
          'images',
          file.path,
        ),
      );
    }

    final response = await request.send();

    if (response.statusCode == 201) {
      final responseBody = await response.stream.bytesToString();
      final List<dynamic> data = await jsonDecode(responseBody);

      return data.map((data) {
        final name = data["name"];
        final format = data["format"];

        return "$API_ENDPOINT/images?name=$name&format=$format";
      }).toList();
    } else {
      throw const ErrorApp(code: 'httpcreatemultipleimages');
    }
  }
}
