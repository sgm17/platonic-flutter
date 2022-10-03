// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_faculties_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityFaculties _$$_UniversityFacultiesFromJson(
        Map<String, dynamic> json) =>
    _$_UniversityFaculties(
      facultyName: json['facultyName'] as String,
      studies: (json['studies'] as List<dynamic>)
          .map((e) => UniversityStudy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UniversityFacultiesToJson(
        _$_UniversityFaculties instance) =>
    <String, dynamic>{
      'facultyName': instance.facultyName,
      'studies': instance.studies,
    };
