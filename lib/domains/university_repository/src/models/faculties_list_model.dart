import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
part 'faculties_list_model.freezed.dart';
part 'faculties_list_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class FacultiesList with _$FacultiesList {
  const FacultiesList._();

  const factory FacultiesList(
      {required int id,
      required String facultyName,
      required List<Study> studies}) = _FacultiesList;

  factory FacultiesList.fromJson(Map<String, dynamic> json) =>
      _$FacultiesListFromJson(json);

  Map<String, dynamic> toJson() => _$FacultiesListToJson(this);
}
