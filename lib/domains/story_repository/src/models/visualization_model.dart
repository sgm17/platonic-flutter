import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
part 'visualization_model.freezed.dart';
part 'visualization_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class Visualization with _$Visualization {
  const Visualization._();

  factory Visualization({
    required int id,
    required AppUser user,
  }) = _Visualization;

  factory Visualization.fromJson(Map<String, dynamic> json) =>
      _$VisualizationFromJson(json);

  Map<String, dynamic> toJson() => _$VisualizationToJson(this);
}
