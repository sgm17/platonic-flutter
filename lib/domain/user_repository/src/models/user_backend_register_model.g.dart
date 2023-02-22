// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_backend_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserBackendRegister _$$_UserBackendRegisterFromJson(
        Map<String, dynamic> json) =>
    _$_UserBackendRegister(
      uid: json['uid'] as String,
      cloudToken: json['cloudToken'] as String?,
      name: json['name'] as String,
      age: json['age'] as int,
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      university:
          University.fromJson(json['university'] as Map<String, dynamic>),
      faculty: Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
      study: Study.fromJson(json['study'] as Map<String, dynamic>),
      meetSettings:
          MeetSettings.fromJson(json['meetSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserBackendRegisterToJson(
        _$_UserBackendRegister instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'cloudToken': instance.cloudToken,
      'name': instance.name,
      'age': instance.age,
      'sex': _$SexEnumMap[instance.sex]!,
      'university': instance.university,
      'faculty': instance.faculty,
      'study': instance.study,
      'meetSettings': instance.meetSettings,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
};
