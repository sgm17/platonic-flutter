import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
part 'place_model.freezed.dart';
part 'place_model.g.dart';

@JsonSerializable(
  createToJson: false,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class PlaceModel with _$PlaceModel {
  const PlaceModel._();

  factory PlaceModel({
    required List<double> geometry,
    required PropertyModel properties,
  }) = _PlaceModel;

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);
}
