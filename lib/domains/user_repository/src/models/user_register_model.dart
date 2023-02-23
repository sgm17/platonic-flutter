import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_register_model.freezed.dart';
part 'user_register_model.g.dart';

@freezed
class UserRegister with _$UserRegister {
  const factory UserRegister({
    String? email,
    String? password,
  }) = _UserRegister;

  factory UserRegister.fromJson(Map<String, Object?> json) =>
      _$UserRegisterFromJson(json);
}
