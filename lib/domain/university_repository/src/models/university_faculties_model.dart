import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';
part 'university_faculties_model.freezed.dart';
part 'university_faculties_model.g.dart';

@freezed
abstract class UniversityFaculties with _$UniversityFaculties {
  const factory UniversityFaculties({
    required String facultyName,
    required List<UniversityStudy> studies,
  }) = _UniversityFaculties;

  factory UniversityFaculties.fromJson(Map<String, Object?> json) =>
      _$UniversityFacultiesFromJson(json);
}
