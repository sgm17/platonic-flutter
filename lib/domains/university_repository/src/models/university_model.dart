import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_model.g.dart';
part 'university_model.freezed.dart';

@freezed
class University with _$University {
  const factory University(
      {required int id,
      required String name,
      required String simpleName}) = _University;

  factory University.fromJson(Map<String, Object?> json) =>
      _$UniversityFromJson(json);
}
