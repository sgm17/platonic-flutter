// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  User get reviewer => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  String get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call({User reviewer, int rating, int createdAt, String comments});

  $UserCopyWith<$Res> get reviewer;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? reviewer = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      reviewer: reviewer == freezed
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as User,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get reviewer {
    return $UserCopyWith<$Res>(_value.reviewer, (value) {
      return _then(_value.copyWith(reviewer: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  $Res call({User reviewer, int rating, int createdAt, String comments});

  @override
  $UserCopyWith<$Res> get reviewer;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, (v) => _then(v as _$_Review));

  @override
  _$_Review get _value => super._value as _$_Review;

  @override
  $Res call({
    Object? reviewer = freezed,
    Object? rating = freezed,
    Object? createdAt = freezed,
    Object? comments = freezed,
  }) {
    return _then(_$_Review(
      reviewer: reviewer == freezed
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as User,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {required this.reviewer,
      required this.rating,
      required this.createdAt,
      required this.comments});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final User reviewer;
  @override
  final int rating;
  @override
  final int createdAt;
  @override
  final String comments;

  @override
  String toString() {
    return 'Review(reviewer: $reviewer, rating: $rating, createdAt: $createdAt, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            const DeepCollectionEquality().equals(other.reviewer, reviewer) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reviewer),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final User reviewer,
      required final int rating,
      required final int createdAt,
      required final String comments}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  User get reviewer;
  @override
  int get rating;
  @override
  int get createdAt;
  @override
  String get comments;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
