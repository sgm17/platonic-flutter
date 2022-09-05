import 'package:freezed_annotation/freezed_annotation.dart';
part 'story_model.freezed.dart';

@freezed
abstract class Story with _$Story {
  const factory Story(
      {required int id,
      required int userId,
      required String username,
      required String profileImage,
      String? facultyName,
      required String body,
      required String backgroundColor,
      required int createdAt}) = _Story;
}
