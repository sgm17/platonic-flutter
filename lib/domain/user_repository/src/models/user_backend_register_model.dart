import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../meet_settings_repository/src/models/models.dart';
import '../../../university_repository/src/models/models.dart';
part 'user_backend_register_model.freezed.dart';
part 'user_backend_register_model.g.dart';

@freezed
class UserBackendRegister with _$UserBackendRegister {
  const factory UserBackendRegister(
      {required String uid,
      String? cloudToken,
      required String name,
      required int age,
      required Sex sex,
      required University university,
      required Faculty faculty,
      required Study study,
      required MeetSettings meetSettings}) = _UserBackendRegister;

  factory UserBackendRegister.fromJson(Map<String, Object?> json) =>
      _$UserBackendRegisterFromJson(json);
}
