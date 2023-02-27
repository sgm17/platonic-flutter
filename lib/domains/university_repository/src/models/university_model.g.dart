// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

University _$UniversityFromJson(Map json) => $checkedCreate(
      'University',
      json,
      ($checkedConvert) {
        final val = University(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          simpleName: $checkedConvert('simple_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'simpleName': 'simple_name'},
    );

Map<String, dynamic> _$UniversityToJson(University instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'simple_name': instance.simpleName,
    };
