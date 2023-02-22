import 'package:freezed_annotation/freezed_annotation.dart';
part 'faculty_model.g.dart';
part 'faculty_model.freezed.dart';

@freezed
class Faculty with _$Faculty {
  const factory Faculty({
    required String facultyName,
  }) = _Faculty;

  static Faculty emptyFaculty = const Faculty(facultyName: 'facultyName');

  factory Faculty.fromJson(Map<String, Object?> json) =>
      _$FacultyFromJson(json);
}
