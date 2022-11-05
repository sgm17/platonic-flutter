// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      username: json['username'] as String,
      profileImage: json['profileImage'] as String?,
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      online: json['online'] as bool,
      lastTimeOnline: json['lastTimeOnline'] as int,
      universityId: json['universityId'] as int,
      universityName: json['universityName'] as String,
      universityFaculty: UniversityFaculty.fromJson(
          json['universityFaculty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profileImage': instance.profileImage,
      'sex': _$SexEnumMap[instance.sex]!,
      'online': instance.online,
      'lastTimeOnline': instance.lastTimeOnline,
      'universityId': instance.universityId,
      'universityName': instance.universityName,
      'universityFaculty': instance.universityFaculty,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
};
