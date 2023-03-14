import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:platonic/helpers/serialize/gradient_converter.dart';
import 'package:flutter/widgets.dart';
part 'story_model.freezed.dart';
part 'story_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  anyMap: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class Story with _$Story {
  const Story._();

  factory Story({
    required int id,
    required AppUser user,
    required Faculty faculty,
    required String body,
    required DateTime creationDate,
    required bool favourite,
    required List<AppUser> visualizations,
    @LinearGradientConverter() required LinearGradient backgroundGradientIndex,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);

  Map<String, dynamic> toJson() => _$StoryToJson(this);
}
