// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Faculty _$FacultyFromJson(Map json) => $checkedCreate(
      'Faculty',
      json,
      ($checkedConvert) {
        final val = Faculty(
          id: $checkedConvert('id', (v) => v as int),
          facultyName: $checkedConvert('faculty_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'facultyName': 'faculty_name'},
    );

Map<String, dynamic> _$FacultyToJson(Faculty instance) => <String, dynamic>{
      'id': instance.id,
      'faculty_name': instance.facultyName,
    };
