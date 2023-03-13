import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/helpers/serialize/gradient_converter.dart';
part 'stories_scroll_model.freezed.dart';
part 'stories_scroll_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class StoriesScroll with _$StoriesScroll {
  const StoriesScroll._();

  const factory StoriesScroll({
    required int id,
    required AppUser user,
    required Faculty faculty,
    @LinearGradientConverter() required LinearGradient backgroundGradientIndex,
  }) = _StoriesScroll;

  factory StoriesScroll.fromJson(Map<String, dynamic> json) =>
      _$StoriesScrollFromJson(json);

  Map<String, dynamic> toJson() => _$StoriesScrollToJson(this);
}
