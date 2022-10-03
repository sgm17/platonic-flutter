import 'package:freezed_annotation/freezed_annotation.dart';
part 'real_estate_lessor_model.freezed.dart';
part 'real_estate_lessor_model.g.dart';

@freezed
abstract class RealEstateLessor with _$RealEstateLessor {
  const factory RealEstateLessor(
      {required int id,
      required String telephone,
      required String realEstateName,
      required int flatReference,
      required String realEstateWebsite,
      required String realEstateCity,
      required String realEstateLogo}) = _RealEstateLessor;

  factory RealEstateLessor.fromJson(Map<String, Object?> json) =>
      _$RealEstateLessorFromJson(json);
}
