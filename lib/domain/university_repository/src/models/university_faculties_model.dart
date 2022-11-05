import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';
part 'university_faculties_model.freezed.dart';
part 'university_faculties_model.g.dart';

@freezed
abstract class UniversityFaculty with _$UniversityFaculty {
  const factory UniversityFaculty({
    required String facultyName,
    required List<UniversityStudy> studies,
  }) = _UniversityFaculty;

  factory UniversityFaculty.fromJson(Map<String, Object?> json) =>
      _$UniversityFacultyFromJson(json);
}
