// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_scroll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoriesScroll _$$_StoriesScrollFromJson(Map<String, dynamic> json) =>
    _$_StoriesScroll(
      appUser: AppUser.fromJson(json['appUser'] as Map<String, dynamic>),
      faculty: Faculty.fromJson(json['faculty'] as Map<String, dynamic>),
      backgroundImage: json['backgroundImage'] as String? ??
          "assets/images/36c0815a7435b728898d67811e50214f1bff69e4.png",
    );

Map<String, dynamic> _$$_StoriesScrollToJson(_$_StoriesScroll instance) =>
    <String, dynamic>{
      'appUser': instance.appUser,
      'faculty': instance.faculty,
      'backgroundImage': instance.backgroundImage,
    };
