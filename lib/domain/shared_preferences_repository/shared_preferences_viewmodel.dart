import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/shared_preferences_repository/shared_preferences_repository.dart';
import 'package:platonic/domain/story_repository/src/models/last_story_ids_per_university_model.dart';
import 'package:platonic/providers/shared_preferences_provider/shared_preferences_provider.dart';

class SharedPreferencesViewmodel extends SharedPreferencesRepository {
  final Reader read;

  SharedPreferencesViewmodel({required this.read});

  static const String MY_LATEST_STORY_IDS_PER_UNIVERSITY =
      'MY_LATEST_STORY_IDS_PER_UNIVERSITY';

  @override
  void writeMyLatestStoryIdsPerUniversity(
      List<LastStoryIdsPerUniversity> myLastStoryIdsPerUniversity) {
    final List<String> myLastStoryIds = myLastStoryIdsPerUniversity
        .map((myLastStory) => jsonEncode(myLastStory.toJson()))
        .toList();
    read(sharedPreferencesProvider)
        .setStringList(MY_LATEST_STORY_IDS_PER_UNIVERSITY, myLastStoryIds);
  }

  @override
  List<LastStoryIdsPerUniversity> retrieveMyLatestStoryIdsPerUniversity() {
    final List<Map<String, dynamic>>? stringLastStoryIds =
        read(sharedPreferencesProvider)
            .getStringList(MY_LATEST_STORY_IDS_PER_UNIVERSITY)
            ?.map((e) => jsonDecode(e) as Map<String, dynamic>)
            .toList();

    final List<LastStoryIdsPerUniversity>? myLastStoryIdsPerUniversity =
        stringLastStoryIds
            ?.map((e) => LastStoryIdsPerUniversity.fromJson(e))
            .toList();

    return myLastStoryIdsPerUniversity ?? [];
  }
}
