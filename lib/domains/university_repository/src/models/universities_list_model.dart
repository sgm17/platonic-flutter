import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/university_repository/src/models/faculties_list_model.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
part 'universities_list_model.freezed.dart';
part 'universities_list_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class UniversitiesList with _$UniversitiesList {
  const UniversitiesList._();

  const factory UniversitiesList(
      {required int id,
      required University university,
      required List<FacultiesList> faculties}) = _UniversitiesList;

  factory UniversitiesList.fromJson(Map<String, dynamic> json) =>
      _$UniversitiesListFromJson(json);

  Map<String, dynamic> toJson() => _$UniversitiesListToJson(this);
}
