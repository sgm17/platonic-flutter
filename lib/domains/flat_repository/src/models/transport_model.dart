import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/constants/constants.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
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
      required AppUser user,
      @IconDataConverter() required IconData icon,
      required int minutes}) = _TransportModel;

  static TransportModel emptyTransport = TransportModel(
      id: 0,
      name: transportationNames.first,
      icon: transportationIcons.first,
      minutes: 0,
      user: AppUser.emptyUser);

  factory TransportModel.fromJson(Map<String, dynamic> json) =>
      _$TransportModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransportModelToJson(this);
}
