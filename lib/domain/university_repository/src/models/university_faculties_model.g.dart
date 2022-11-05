// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_faculties_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversityFaculty _$$_UniversityFacultyFromJson(Map<String, dynamic> json) =>
    _$_UniversityFaculty(
      facultyName: json['facultyName'] as String,
      studies: (json['studies'] as List<dynamic>)
          .map((e) => UniversityStudy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UniversityFacultyToJson(
        _$_UniversityFaculty instance) =>
    <String, dynamic>{
      'facultyName': instance.facultyName,
      'studies': instance.studies,
    };
