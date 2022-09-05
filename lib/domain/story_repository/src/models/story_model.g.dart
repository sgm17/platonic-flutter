// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Story _$$_StoryFromJson(Map<String, dynamic> json) => _$_Story(
      id: json['id'] as int,
      userId: json['userId'] as int,
      username: json['username'] as String,
      profileImage: json['profileImage'] as String,
      facultyName: json['facultyName'] as String?,
      body: json['body'] as String,
      backgroundColor: json['backgroundColor'] as String,
      createdAt: json['createdAt'] as int,
    );

Map<String, dynamic> _$$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'profileImage': instance.profileImage,
      'facultyName': instance.facultyName,
      'body': instance.body,
      'backgroundColor': instance.backgroundColor,
      'createdAt': instance.createdAt,
    };
