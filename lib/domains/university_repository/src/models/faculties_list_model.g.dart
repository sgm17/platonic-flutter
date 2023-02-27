// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculties_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FacultiesList _$FacultiesListFromJson(Map json) => $checkedCreate(
      'FacultiesList',
      json,
      ($checkedConvert) {
        final val = FacultiesList(
          id: $checkedConvert('id', (v) => v as int),
          facultyName: $checkedConvert('faculty_name', (v) => v as String),
          studies: $checkedConvert(
              'studies',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Study.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'facultyName': 'faculty_name'},
    );

Map<String, dynamic> _$FacultiesListToJson(FacultiesList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'faculty_name': instance.facultyName,
      'studies': instance.studies.map((e) => e.toJson()).toList(),
    };
