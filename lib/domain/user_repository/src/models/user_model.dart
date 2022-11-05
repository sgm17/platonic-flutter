import '../../../university_repository/src/models/models.dart';
import 'models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {required int id,
      required String username,
      String? profileImage,
      required Sex sex,
      required bool online,
      required int lastTimeOnline,
      required int universityId,
      required String universityName,
      required UniversityFaculty universityFaculty}) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
