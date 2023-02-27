import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_register_model.freezed.dart';

@freezed
class UserRegister with _$UserRegister {
  const factory UserRegister({
    String? email,
    String? password,
  }) = _UserRegister;
}
