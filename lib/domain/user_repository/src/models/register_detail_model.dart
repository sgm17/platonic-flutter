import 'package:platonic/domain/university_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_detail_model.freezed.dart';
part 'register_detail_model.g.dart';

@freezed
class RegisterDetail with _$RegisterDetail {
  const factory RegisterDetail({
    String? name,
    int? age,
    required Sex sex,
    University? university,
    Faculty? faculty,
    Study? study,
  }) = _RegisterDetail;

  static const RegisterDetail emptyRegisterDetail =
      RegisterDetail(sex: Sex.male);

  factory RegisterDetail.fromJson(Map<String, Object?> json) =>
      _$RegisterDetailFromJson(json);
}
