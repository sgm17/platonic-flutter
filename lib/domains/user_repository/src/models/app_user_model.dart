import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    String? cloudToken,
    String? tokenId,
    required String name,
    required University university,
    required Study study,
    String? profileImage,
    String? meetPicture,
  }) = _AppUser;

  static const AppUser emptyUser = AppUser(
      uid: 'uid',
      name: 'name',
      university: University(id: 0, name: 'name', simpleName: 'simpleName'),
      study: Study(name: 'name', courses: 0));

  factory AppUser.fromJson(Map<String, Object?> json) =>
      _$AppUserFromJson(json);
}
