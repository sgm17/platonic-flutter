import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/flat_repository/src/models/property_model.dart';
part 'flat_home_model.freezed.dart';
part 'flat_home_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class FlatHomeModel with _$FlatHomeModel {
  const FlatHomeModel._();

  factory FlatHomeModel({
    required int id,
    required String title,
    required PropertyModel properties,
    required int rentPricePerMonthInCents,
    required int electricityPriceInCents,
    required String bedroom,
    required String bathroom,
    required String image,
  }) = _FlatHomeModel;

  factory FlatHomeModel.fromJson(Map<String, dynamic> json) =>
      _$FlatHomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$FlatHomeModelToJson(this);
}
