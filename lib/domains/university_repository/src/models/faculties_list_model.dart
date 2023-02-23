import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
part 'faculties_list_model.freezed.dart';
part 'faculties_list_model.g.dart';

@freezed
class FacultiesList with _$FacultiesList {
  const factory FacultiesList(
      {required String facultyName,
      required List<Study> studies}) = _FacultiesList;

  Faculty convertToFaculty() {
    return Faculty(facultyName: facultyName);
  }

  factory FacultiesList.fromJson(Map<String, dynamic> json) =>
      _$FacultiesListFromJson(json);
}
