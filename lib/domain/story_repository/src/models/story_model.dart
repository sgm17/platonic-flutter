import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'story_model.freezed.dart';
part 'story_model.g.dart';

@freezed
abstract class Story with _$Story {
  const factory Story(
      {required int id,
      required int userId,
      required String username,
      required String profileImage,
      required String facultyName,
      required String body,
      @ColorSerialiser() required Color backgroundColor,
      required int createdAt}) = _Story;

  factory Story.fromJson(Map<String, Object?> json) => _$StoryFromJson(json);
}

class ColorSerialiser implements JsonConverter<Color, int> {
  const ColorSerialiser();

  @override
  Color fromJson(int color) => Color(color);

  @override
  int toJson(Color color) => color.value;
}
