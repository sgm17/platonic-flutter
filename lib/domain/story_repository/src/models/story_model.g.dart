// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Story _$$_StoryFromJson(Map<String, dynamic> json) => _$_Story(
      appUser: AppUser.fromJson(json['appUser'] as Map<String, dynamic>),
      faculty: Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
      body: json['body'] as String,
      timestamp: json['timestamp'] as int,
      favourite: json['favourite'] as bool,
      alreadyConversation: json['alreadyConversation'] as bool,
      ownStory: json['ownStory'] as bool,
      backgroundGradient: const LinearGradientConverter()
          .fromJson(json['backgroundGradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'appUser': instance.appUser,
      'faculty': instance.faculty,
      'body': instance.body,
      'timestamp': instance.timestamp,
      'favourite': instance.favourite,
      'alreadyConversation': instance.alreadyConversation,
      'ownStory': instance.ownStory,
      'backgroundGradient':
          const LinearGradientConverter().toJson(instance.backgroundGradient),
    };
