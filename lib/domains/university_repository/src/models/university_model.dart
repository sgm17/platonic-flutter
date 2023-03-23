import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_model.g.dart';
part 'university_model.freezed.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class University with _$University {
  const University._();

  const factory University(
      {required int id,
      required String name,
      required String simpleName}) = _University;

  factory University.fromJson(Map<String, dynamic> json) =>
      _$UniversityFromJson(json);

  static const University emptyUniversity =
      University(id: 0, name: '', simpleName: '');

  Map<String, dynamic> toJson() => _$UniversityToJson(this);
}
