import 'models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_model.freezed.dart';
part 'university_model.g.dart';

@freezed
abstract class University with _$University {
  const factory University(
      {required int id,
      required String name,
      required String simpleName,
      required String image,
      required List<double> coordinates,
      required List<UniversityFaculties> faculties}) = _University;

  factory University.fromJson(Map<String, Object?> json) =>
      _$UniversityFromJson(json);
}
