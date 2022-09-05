import 'package:freezed_annotation/freezed_annotation.dart';
part 'meet_model.freezed.dart';
part 'meet_model.g.dart';

@freezed
abstract class Meet with _$Meet {
  const factory Meet({
    required int id,
    required int userId,
    required String username,
    required String profileImage,
    required int messagesCount,
    required int endsAt,
    required int startedAt,
    String? universityParentName,
    String? universityAcronym,
    required String universityName,
    String? universityFaculty,
  }) = _Meet;

  factory Meet.fromJson(Map<String, Object?> json) => _$MeetFromJson(json);
}
