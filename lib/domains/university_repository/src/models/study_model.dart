import 'package:freezed_annotation/freezed_annotation.dart';
part 'study_model.g.dart';
part 'study_model.freezed.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class Study with _$Study {
  const Study._();

  const factory Study(
      {required int id, required String name, required int courses}) = _Study;

  factory Study.fromJson(Map<String, dynamic> json) => _$StudyFromJson(json);

  Map<String, dynamic> toJson() => _$StudyToJson(this);
}
