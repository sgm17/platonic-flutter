// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeStory _$$_HomeStoryFromJson(Map<String, dynamic> json) => _$_HomeStory(
      lastStoryIdsPerUniversity:
          (json['lastStoryIdsPerUniversity'] as List<dynamic>)
              .map((e) =>
                  LastStoryIdsPerUniversity.fromJson(e as Map<String, dynamic>))
              .toList(),
      university: json['university'] == null
          ? null
          : University.fromJson(json['university'] as Map<String, dynamic>),
      stories: (json['stories'] as List<dynamic>)
          .map((e) => Story.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeStoryToJson(_$_HomeStory instance) =>
    <String, dynamic>{
      'lastStoryIdsPerUniversity': instance.lastStoryIdsPerUniversity,
      'university': instance.university,
      'stories': instance.stories,
    };
