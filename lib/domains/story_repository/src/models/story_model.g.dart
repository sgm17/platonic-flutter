// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Story _$StoryFromJson(Map json) => $checkedCreate(
      'Story',
      json,
      ($checkedConvert) {
        final val = Story(
          id: $checkedConvert('id', (v) => v as int),
          user: $checkedConvert('user',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
          faculty: $checkedConvert('faculty',
              (v) => Faculty.fromJson(Map<String, dynamic>.from(v as Map))),
          body: $checkedConvert('body', (v) => v as String),
          createdAt: $checkedConvert('created_at',
              (v) => const DateTimeConverter().fromJson(v as String)),
          favourite: $checkedConvert('favourite', (v) => v as bool),
          alreadyConversation:
              $checkedConvert('already_conversation', (v) => v as bool),
          ownStory: $checkedConvert('own_story', (v) => v as bool),
          backgroundGradientIndex: $checkedConvert('background_gradient_index',
              (v) => const LinearGradientConverter().fromJson(v as int)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'alreadyConversation': 'already_conversation',
        'ownStory': 'own_story',
        'backgroundGradientIndex': 'background_gradient_index'
      },
    );

Map<String, dynamic> _$StoryToJson(Story instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'faculty': instance.faculty.toJson(),
      'body': instance.body,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'favourite': instance.favourite,
      'already_conversation': instance.alreadyConversation,
      'own_story': instance.ownStory,
      'background_gradient_index': const LinearGradientConverter()
          .toJson(instance.backgroundGradientIndex),
    };
