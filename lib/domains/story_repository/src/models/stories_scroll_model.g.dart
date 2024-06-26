// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_scroll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoriesScroll _$StoriesScrollFromJson(Map json) => $checkedCreate(
      'StoriesScroll',
      json,
      ($checkedConvert) {
        final val = StoriesScroll(
          id: $checkedConvert('id', (v) => v as int),
          user: $checkedConvert('user',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
          faculty: $checkedConvert('faculty',
              (v) => Faculty.fromJson(Map<String, dynamic>.from(v as Map))),
          backgroundGradientIndex: $checkedConvert('background_gradient_index',
              (v) => const LinearGradientConverter().fromJson(v as int)),
        );
        return val;
      },
      fieldKeyMap: const {
        'backgroundGradientIndex': 'background_gradient_index'
      },
    );

Map<String, dynamic> _$StoriesScrollToJson(StoriesScroll instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'faculty': instance.faculty.toJson(),
      'background_gradient_index': const LinearGradientConverter()
          .toJson(instance.backgroundGradientIndex),
    };
