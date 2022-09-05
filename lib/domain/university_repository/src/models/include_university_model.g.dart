// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'include_university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IncludeUniversity _$$_IncludeUniversityFromJson(Map<String, dynamic> json) =>
    _$_IncludeUniversity(
      associateName: json['associateName'] as String?,
      parentName: json['parentName'] as String?,
      name: json['name'] as String,
      acronym: json['acronym'] as String?,
      type: json['type'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_IncludeUniversityToJson(
        _$_IncludeUniversity instance) =>
    <String, dynamic>{
      'associateName': instance.associateName,
      'parentName': instance.parentName,
      'name': instance.name,
      'acronym': instance.acronym,
      'type': instance.type,
      'address': instance.address,
    };
