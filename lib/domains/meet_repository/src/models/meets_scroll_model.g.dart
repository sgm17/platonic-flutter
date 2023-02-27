// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meets_scroll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeetsScroll _$MeetsScrollFromJson(Map json) => $checkedCreate(
      'MeetsScroll',
      json,
      ($checkedConvert) {
        final val = MeetsScroll(
          id: $checkedConvert('id', (v) => v as int),
          user: $checkedConvert('user',
              (v) => AppUser.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$MeetsScrollToJson(MeetsScroll instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
    };
