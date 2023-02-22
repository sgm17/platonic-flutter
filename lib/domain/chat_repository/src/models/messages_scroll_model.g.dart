// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_scroll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessagesScroll _$$_MessagesScrollFromJson(Map<String, dynamic> json) =>
    _$_MessagesScroll(
      appUser: AppUser.fromJson(json['appUser'] as Map<String, dynamic>),
      lastMessage: json['lastMessage'] as String,
    );

Map<String, dynamic> _$$_MessagesScrollToJson(_$_MessagesScroll instance) =>
    <String, dynamic>{
      'appUser': instance.appUser,
      'lastMessage': instance.lastMessage,
    };
