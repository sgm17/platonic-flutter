import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_story_model.freezed.dart';
part 'post_story_model.g.dart';

@freezed
abstract class PostStory with _$PostStory {
  const factory PostStory(
      {required int userId,
      required int universityId,
      required String body,
      required String backgroundColor}) = _PostStory;

  factory PostStory.fromJson(Map<String, Object?> json) =>
      _$PostStoryFromJson(json);
}
