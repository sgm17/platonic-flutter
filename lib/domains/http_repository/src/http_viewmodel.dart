import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/domains/university_repository/src/models/universities_list_model.dart';
import 'package:platonic/domains/http_repository/models/error_app_model.dart';
import 'package:platonic/domains/http_repository/src/http_repository.dart';
import 'package:platonic/domains/meet_repository/src/models/meets_scroll_model.dart';
import 'package:platonic/domains/story_repository/src/models/stories_scroll_model.dart';
import 'package:platonic/domains/story_repository/src/models/story_model.dart';
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

    final response = await http.get(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/universities"),
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
    if (tokenId == null) return null;

    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.get(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/users"),
        headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUser.fromJson(data);
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

    final response = await http.post(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/users"),
        headers: headers,
        body: jsonEncode(user.toJson()));

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
    final response = await http.put(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/users/${user.id}"),
        headers: headers,
        body: jsonEncode(user.toJson()));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return AppUser.fromJson(data);
    } else {
      throw const ErrorApp(code: 'httpupdateappuser');
    }
  }

  @override
  Future<bool> putUpdateCloudTokenAppUser({required String cloudToken}) async {
    if (tokenId == null) return false;

    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.put(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/users/cloud_token"),
        headers: headers,
        body: jsonEncode({'cloud_token': cloudToken}));

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
    final response = await http.delete(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/users/${user.id}"),
        headers: headers);

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
    final response = await http.get(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/meets"),
        headers: headers);

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
    final response = await http.delete(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/meets/$meetId"),
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
    final response = await http.get(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/stories"),
        headers: headers);

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

    final response = await http.get(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/stories/$facultyId"),
        headers: headers);

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
    final response = await http.post(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/stories"),
        headers: headers,
        body: jsonEncode(story.toJson()));
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
        Uri.parse(
            "${dotenv.env['API_ENDPOINT']}/stories/$storyId/toggle_favourite"),
        headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data['favourite'] as bool;
    } else {
      throw const ErrorApp(code: 'httpfavouritestories');
    }
  }

  @override
  Future<bool> postCreateVisualization({required int storyId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.post(
        Uri.parse(
            "${dotenv.env['API_ENDPOINT']}/stories/$storyId/visualizations"),
        headers: headers,
        body: jsonEncode({'story_id': storyId}));

    if (response.statusCode == 201) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data["visualization"];
    } else if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data["visualization"];
    } else {
      throw const ErrorApp(code: 'httpcreatevisualization');
    }
  }

  @override
  Future<bool> deleteDestroyStory({required int storyId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };
    final response = await http.delete(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/stories/$storyId"),
        headers: headers);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return data['destroyed'] as bool;
    } else {
      throw const ErrorApp(code: 'httpdeletestories');
    }
  }

  @override
  Future<void> deleteDestroyFlat({required int flatId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.delete(
      Uri.parse("${dotenv.env['API_ENDPOINT']}/flats/$flatId"),
      headers: headers,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<List<FlatsScrollModel>> getIndexFlats() async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.get(
      Uri.parse("${dotenv.env['API_ENDPOINT']}/flats"),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);

      return data.map((e) => FlatsScrollModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<FlatHomeModel?> getIndexHomeFlat() async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.get(
      Uri.parse("${dotenv.env['API_ENDPOINT']}/flats/index_home"),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic>? data = await jsonDecode(response.body);
      if (data == null) {
        return null;
      } else {
        return FlatHomeModel.fromJson(data);
      }
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<FlatModel> getShowFlat({required int flatId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.get(
      Uri.parse("${dotenv.env['API_ENDPOINT']}/flats/$flatId"),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      return FlatModel.fromJson(data);
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<List<AppUser>> postAddRemoveTenant(
      {required int flatId, required String tenantEmail}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final body = {'id': flatId, 'tenant_email': tenantEmail};

    final response = await http.post(
        Uri.parse(
            "${dotenv.env['API_ENDPOINT']}/flats/$flatId/add_remove_tenant"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final List<dynamic> data = await jsonDecode(response.body);
      return data.map((e) => AppUser.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<bool> postBookmarkFlat({required int flatId}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final body = {'id': flatId};

    final response = await http.post(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/flats/$flatId/bookmark"),
        headers: headers,
        body: body);

    if (response.statusCode == 200) {
      final Map<String, bool> data = await jsonDecode(response.body);

      return data["book_mark"] ?? false;
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<FlatsScrollModel> postCreateFlat({required FlatModel flat}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.post(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/flats"),
        headers: headers,
        body: jsonEncode(flat.toJson()));

    if (response.statusCode == 201) {
      final Map<String, dynamic> data = await jsonDecode(response.body);

      return FlatsScrollModel.fromJson(data);
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<FlatsScrollModel> putUpdateFlat({required FlatModel flat}) async {
    final headers = {
      'Authorization': 'Bearer $tokenId',
      'Content-Type': 'application/json',
    };

    final response = await http.put(
        Uri.parse("${dotenv.env['API_ENDPOINT']}/flats/${flat.id}"),
        headers: headers,
        body: jsonEncode(flat.toJson()));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);

      return FlatsScrollModel.fromJson(data);
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<List<PlaceModel>> getIndexAddress({required String address}) async {
    const ADDRESS_LIMIT = 5;

    final response = await http.get(
        Uri.parse(
            "https://photon.komoot.io/api/?q=$address&limit=$ADDRESS_LIMIT"),
        headers: {
          'Content-Type': 'application/json',
        });

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = await jsonDecode(response.body);
      final features = data["features"] as List<dynamic>?;

      if (features == null) return [];

      return features
          .where((f) => f["properties"]["type"] == "street")
          .map((e) {
        final geometry = e["geometry"];
        final List<dynamic> newGeometry = geometry["coordinates"];
        final Map<String, dynamic> newMap = {...e, "geometry": newGeometry};
        return PlaceModel.fromJson(newMap);
      }).toList();
    } else {
      throw Exception('Failed to load the user');
    }
  }

  @override
  Future<String> postCreateImage({required File file}) async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('${dotenv.env['API_ENDPOINT']}/images'),
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

      return "${dotenv.env['API_ENDPOINT']}/images?name=$name&format=$format";
    } else {
      throw const ErrorApp(code: 'httpcreateimage');
    }
  }

  @override
  Future<List<String>> postCreateMultipleImages(
      {required List<File> files}) async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('${dotenv.env['API_ENDPOINT']}/create_multiple'),
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

        return "${dotenv.env['API_ENDPOINT']}/images?name=$name&format=$format";
      }).toList();
    } else {
      throw const ErrorApp(code: 'httpcreatemultipleimages');
    }
  }
}
