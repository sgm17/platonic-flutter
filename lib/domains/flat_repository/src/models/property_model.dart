import 'package:freezed_annotation/freezed_annotation.dart';
part 'property_model.freezed.dart';
part 'property_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class PropertyModel with _$PropertyModel {
  const PropertyModel._();

  factory PropertyModel(
      {required String country,
      required String city,
      required String countrycode,
      required String postcode,
      required String? county,
      required String? housenumber,
      required String name,
      required String state}) = _PropertyModel;

  factory PropertyModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyModelFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyModelToJson(this);
}
