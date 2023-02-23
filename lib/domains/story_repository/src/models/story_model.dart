import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platonic/domains/university_repository/src/models/models.dart';
import 'package:platonic/domains/user_repository/src/models/app_user_model.dart';
import 'package:platonic/helpers/serialize/gradient_converter.dart';
import 'package:flutter/widgets.dart';
part 'story_model.freezed.dart';
part 'story_model.g.dart';

@freezed
class Story with _$Story {
  const factory Story({
    required AppUser appUser,
    required Faculty faculty,
    required String body,
    required int timestamp,
    required bool favourite,
    required bool alreadyConversation,
    required bool ownStory,
    @LinearGradientConverter() required LinearGradient backgroundGradient,
  }) = _Story;

  factory Story.fromJson(Map<String, Object?> json) => _$StoryFromJson(json);
}
