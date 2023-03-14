import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class AppUser with _$AppUser {
  const AppUser._();

  const factory AppUser(
      {required int id,
      required String uid,
      String? cloudToken,
      required String name,
      required String email,
      required Sex sex,
      required int age,
      String? profileImage,
      String? meetPicture,
      required int universityId,
      required int facultyId,
      required int studyId,
      University? university,
      Faculty? faculty,
      Study? study,
      bool? meetStatus,
      Sex? sexToMeet,
      University? universityToMeet,
      int? universityToMeetId,
      List<Faculty>? facultiesToMeet}) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  Map<String, dynamic> toJson() => _$AppUserToJson(this);

  static const AppUser emptyUser = AppUser(
    id: 0,
    uid: '',
    name: '',
    email: '',
    sex: Sex.male,
    age: 0,
    university: University(id: 0, name: '', simpleName: ''),
    faculty: Faculty(id: 0, facultyName: ''),
    study: Study(id: 0, studyName: ''),
    facultyId: 0,
    universityId: 0,
    studyId: 0,
    universityToMeetId: 0,
    facultiesToMeet: [],
  );
}
