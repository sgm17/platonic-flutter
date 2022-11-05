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
      universityName: json['universityName'] as String,
      universityFaculty: UniversityFaculty.fromJson(
          json['universityFaculty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MeetToJson(_$_Meet instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'profileImage': instance.profileImage,
      'messagesCount': instance.messagesCount,
      'endsAt': instance.endsAt,
      'startedAt': instance.startedAt,
      'universityName': instance.universityName,
      'universityFaculty': instance.universityFaculty,
    };
