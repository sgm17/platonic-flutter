// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_University _$$_UniversityFromJson(Map<String, dynamic> json) =>
    _$_University(
      id: json['id'] as int,
      name: json['name'] as String,
      simpleName: json['simpleName'] as String,
      image: json['image'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      faculties: (json['faculties'] as List<dynamic>)
          .map((e) => UniversityFaculty.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UniversityToJson(_$_University instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'simpleName': instance.simpleName,
      'image': instance.image,
      'coordinates': instance.coordinates,
      'faculties': instance.faculties,
    };
