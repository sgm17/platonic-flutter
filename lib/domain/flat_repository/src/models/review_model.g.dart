// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      reviewer: User.fromJson(json['reviewer'] as Map<String, dynamic>),
      rating: json['rating'] as int,
      createdAt: json['createdAt'] as int,
      comments: json['comments'] as String,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'reviewer': instance.reviewer,
      'rating': instance.rating,
      'createdAt': instance.createdAt,
      'comments': instance.comments,
    };
