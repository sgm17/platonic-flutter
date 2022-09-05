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
      universityParentName: json['universityParentName'] as String?,
      universityName: json['universityName'] as String,
      universityFaculty: json['universityFaculty'] as String?,
      universityAcronym: json['universityAcronym'] as String?,
      likesGiven: json['likesGiven'] as int,
      repliesGiven: json['repliesGiven'] as int,
      totalChats: json['totalChats'] as int,
      center: (json['center'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profileImage': instance.profileImage,
      'sex': _$SexEnumMap[instance.sex]!,
      'online': instance.online,
      'lastTimeOnline': instance.lastTimeOnline,
      'universityId': instance.universityId,
      'universityParentName': instance.universityParentName,
      'universityName': instance.universityName,
      'universityFaculty': instance.universityFaculty,
      'universityAcronym': instance.universityAcronym,
      'likesGiven': instance.likesGiven,
      'repliesGiven': instance.repliesGiven,
      'totalChats': instance.totalChats,
      'center': instance.center,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
};
