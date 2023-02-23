// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      uid: json['uid'] as String,
      cloudToken: json['cloudToken'] as String?,
      tokenId: json['tokenId'] as String?,
      name: json['name'] as String,
      university:
          University.fromJson(json['university'] as Map<String, dynamic>),
      study: Study.fromJson(json['study'] as Map<String, dynamic>),
      profileImage: json['profileImage'] as String?,
      meetPicture: json['meetPicture'] as String?,
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'cloudToken': instance.cloudToken,
      'tokenId': instance.tokenId,
      'name': instance.name,
      'university': instance.university,
      'study': instance.study,
      'profileImage': instance.profileImage,
      'meetPicture': instance.meetPicture,
    };
