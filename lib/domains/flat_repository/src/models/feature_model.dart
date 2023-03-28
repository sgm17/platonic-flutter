import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../helpers/serialize/icon_data_converter.dart';
part 'feature_model.freezed.dart';
part 'feature_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class FeatureModel with _$FeatureModel {
  const FeatureModel._();

  factory FeatureModel({
    required int id,
    required String name,
    @IconDataConverter() required IconData icon,
  }) = _FeatureModel;

  factory FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureModelFromJson(json);

  static FeatureModel emptyFeature =
      FeatureModel(id: 0, name: '', icon: Icons.abc);

  Map<String, dynamic> toJson() => _$FeatureModelToJson(this);
}
