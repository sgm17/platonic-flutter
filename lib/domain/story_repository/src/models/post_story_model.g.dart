// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostStory _$$_PostStoryFromJson(Map<String, dynamic> json) => _$_PostStory(
      userId: json['userId'] as int,
      universityId: json['universityId'] as int,
      body: json['body'] as String,
      backgroundColor: json['backgroundColor'] as String,
    );

Map<String, dynamic> _$$_PostStoryToJson(_$_PostStory instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'universityId': instance.universityId,
      'body': instance.body,
      'backgroundColor': instance.backgroundColor,
    };
