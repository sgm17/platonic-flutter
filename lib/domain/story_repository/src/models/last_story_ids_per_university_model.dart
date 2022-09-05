import 'package:freezed_annotation/freezed_annotation.dart';
part 'last_story_ids_per_university_model.freezed.dart';
part 'last_story_ids_per_university_model.g.dart';

@freezed
abstract class LastStoryIdsPerUniversity with _$LastStoryIdsPerUniversity {
  const factory LastStoryIdsPerUniversity(
      {required int universityId,
      required int lastStoryIdPerUniversity}) = _LastStoryIdsPerUniversity;

  factory LastStoryIdsPerUniversity.fromJson(Map<String, Object?> json) =>
      _$LastStoryIdsPerUniversityFromJson(json);
}
