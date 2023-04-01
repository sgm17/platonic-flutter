import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
part 'flats_scroll_model.freezed.dart';
part 'flats_scroll_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class FlatsScrollModel with _$FlatsScrollModel {
  const FlatsScrollModel._();

  factory FlatsScrollModel(
      {required int id,
      required String title,
      required PropertyModel properties,
      required int rentPricePerMonthInCents,
      required int electricityPriceInCents,
      @Default(false) bool? bookMark,
      required TransportModel transport,
      required String image,
      required bool ownFlat,
      required String bedroom,
      required String bathroom,
      required int built}) = _FlatsScrollModel;

  factory FlatsScrollModel.fromJson(Map<String, dynamic> json) =>
      _$FlatsScrollModelFromJson(json);

  Map<String, dynamic> toJson() => _$FlatsScrollModelToJson(this);
}
