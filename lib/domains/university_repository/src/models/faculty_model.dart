import 'package:freezed_annotation/freezed_annotation.dart';
part 'faculty_model.g.dart';
part 'faculty_model.freezed.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class Faculty with _$Faculty {
  const Faculty._();

  const factory Faculty({
    required int id,
    required String? facultyName,
  }) = _Faculty;

  static Faculty emptyFaculty = const Faculty(id: 0, facultyName: '');

  factory Faculty.fromJson(Map<String, dynamic> json) =>
      _$FacultyFromJson(json);

  Map<String, dynamic> toJson() => _$FacultyToJson(this);
}
