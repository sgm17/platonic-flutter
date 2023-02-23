// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faculties_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FacultiesList _$$_FacultiesListFromJson(Map<String, dynamic> json) =>
    _$_FacultiesList(
      facultyName: json['facultyName'] as String,
      studies: (json['studies'] as List<dynamic>)
          .map((e) => Study.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FacultiesListToJson(_$_FacultiesList instance) =>
    <String, dynamic>{
      'facultyName': instance.facultyName,
      'studies': instance.studies,
    };
