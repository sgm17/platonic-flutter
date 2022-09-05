// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meet _$$_MeetFromJson(Map<String, dynamic> json) => _$_Meet(
      id: json['id'] as int,
      userId: json['userId'] as int,
      username: json['username'] as String,
      profileImage: json['profileImage'] as String,
      messagesCount: json['messagesCount'] as int,
      endsAt: json['endsAt'] as int,
      startedAt: json['startedAt'] as int,
      universityParentName: json['universityParentName'] as String?,
      universityAcronym: json['universityAcronym'] as String?,
      universityName: json['universityName'] as String,
      universityFaculty: json['universityFaculty'] as String?,
    );

Map<String, dynamic> _$$_MeetToJson(_$_Meet instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'profileImage': instance.profileImage,
      'messagesCount': instance.messagesCount,
      'endsAt': instance.endsAt,
      'startedAt': instance.startedAt,
      'universityParentName': instance.universityParentName,
      'universityAcronym': instance.universityAcronym,
      'universityName': instance.universityName,
      'universityFaculty': instance.universityFaculty,
    };
