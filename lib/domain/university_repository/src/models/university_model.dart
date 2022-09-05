import 'models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_model.freezed.dart';
part 'university_model.g.dart';

@freezed
abstract class University with _$University {
  const factory University(
      {required int id,
      String? acronym,
      required String type,
      String? associateName,
      String? parentName,
      required String name,
      required String address,
      required String simple,
      required List<double> center,
      required String image,
      List<IncludeUniversity>? includes}) = _University;

  factory University.fromJson(Map<String, Object?> json) =>
      _$UniversityFromJson(json);
}
