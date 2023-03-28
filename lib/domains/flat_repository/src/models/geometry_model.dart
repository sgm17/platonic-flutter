import 'package:freezed_annotation/freezed_annotation.dart';
part 'geometry_model.freezed.dart';
part 'geometry_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class GeometryModel with _$GeometryModel {
  const GeometryModel._();

  factory GeometryModel({
    required List<double> coordinates,
  }) = _GeometryModel;

  factory GeometryModel.fromJson(Map<String, dynamic> json) =>
      _$GeometryModelFromJson(json);

  static GeometryModel emptyGeometry =
      GeometryModel(coordinates: [2.1772465375394248, 41.38283257963744]);

  Map<String, dynamic> toJson() => _$GeometryModelToJson(this);
}
