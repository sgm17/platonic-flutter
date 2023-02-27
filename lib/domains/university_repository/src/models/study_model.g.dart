// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Study _$StudyFromJson(Map json) => $checkedCreate(
      'Study',
      json,
      ($checkedConvert) {
        final val = Study(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          courses: $checkedConvert('courses', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$StudyToJson(Study instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'courses': instance.courses,
    };
