// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeetSettings _$$_MeetSettingsFromJson(Map<String, dynamic> json) =>
    _$_MeetSettings(
      meetStatus: json['meetStatus'] as bool,
      sexToMeet: $enumDecode(_$SexEnumMap, json['sexToMeet']),
      universityToMeet: json['universityToMeet'] == null
          ? null
          : University.fromJson(
              json['universityToMeet'] as Map<String, dynamic>),
      facultiesToMeet: (json['facultiesToMeet'] as List<dynamic>)
          .map((e) => Faculty.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MeetSettingsToJson(_$_MeetSettings instance) =>
    <String, dynamic>{
      'meetStatus': instance.meetStatus,
      'sexToMeet': _$SexEnumMap[instance.sexToMeet]!,
      'universityToMeet': instance.universityToMeet,
      'facultiesToMeet': instance.facultiesToMeet,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
};
