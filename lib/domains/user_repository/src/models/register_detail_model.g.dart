// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterDetail _$$_RegisterDetailFromJson(Map<String, dynamic> json) =>
    _$_RegisterDetail(
      name: json['name'] as String?,
      age: json['age'] as int?,
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      university: json['university'] == null
          ? null
          : University.fromJson(json['university'] as Map<String, dynamic>),
      faculty: json['faculty'] == null
          ? null
          : Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
      study: json['study'] == null
          ? null
          : Study.fromJson(json['study'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterDetailToJson(_$_RegisterDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'sex': _$SexEnumMap[instance.sex]!,
      'university': instance.university,
      'faculty': instance.faculty,
      'study': instance.study,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
};
