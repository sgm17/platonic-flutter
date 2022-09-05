// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Preferences _$$_PreferencesFromJson(Map<String, dynamic> json) =>
    _$_Preferences(
      university:
          University.fromJson(json['university'] as Map<String, dynamic>),
      sex: $enumDecode(_$SexEnumMap, json['sex']),
    );

Map<String, dynamic> _$$_PreferencesToJson(_$_Preferences instance) =>
    <String, dynamic>{
      'university': instance.university,
      'sex': _$SexEnumMap[instance.sex]!,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
};
