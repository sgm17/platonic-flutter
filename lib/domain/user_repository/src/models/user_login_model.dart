import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_login_model.freezed.dart';
part 'user_login_model.g.dart';

@freezed
class UserLogin with _$UserLogin {
  const factory UserLogin({
    String? email,
    String? password,
  }) = _UserLogin;

  factory UserLogin.fromJson(Map<String, Object?> json) =>
      _$UserLoginFromJson(json);
}
