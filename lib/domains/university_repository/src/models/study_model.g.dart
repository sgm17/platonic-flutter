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
          studyName: $checkedConvert('study_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'studyName': 'study_name'},
    );

Map<String, dynamic> _$StudyToJson(Study instance) => <String, dynamic>{
      'id': instance.id,
      'study_name': instance.studyName,
    };
