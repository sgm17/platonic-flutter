import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/widgets.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/helpers/serialize/icon_data_converter.dart';
part 'transport_model.freezed.dart';
part 'transport_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class TransportModel with _$TransportModel {
  const TransportModel._();

  factory TransportModel(
      {required int id,
      required String name,
      @IconDataConverter() required IconData icon,
      required int minutes,
      required University university}) = _TransportModel;

  factory TransportModel.fromJson(Map<String, dynamic> json) =>
      _$TransportModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransportModelToJson(this);
}
