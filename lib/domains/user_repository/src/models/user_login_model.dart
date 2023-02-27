import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_login_model.freezed.dart';

@freezed
class UserLogin with _$UserLogin {
  const factory UserLogin({
    String? email,
    String? password,
  }) = _UserLogin;
}
