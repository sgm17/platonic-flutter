// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flat_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlatImage _$FlatImageFromJson(Map<String, dynamic> json) {
  return _FlatImage.fromJson(json);
}

/// @nodoc
mixin _$FlatImage {
  String get image => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlatImageCopyWith<FlatImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlatImageCopyWith<$Res> {
  factory $FlatImageCopyWith(FlatImage value, $Res Function(FlatImage) then) =
      _$FlatImageCopyWithImpl<$Res>;
  $Res call({String image, String location});
}

/// @nodoc
class _$FlatImageCopyWithImpl<$Res> implements $FlatImageCopyWith<$Res> {
  _$FlatImageCopyWithImpl(this._value, this._then);

  final FlatImage _value;
  // ignore: unused_field
  final $Res Function(FlatImage) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FlatImageCopyWith<$Res> implements $FlatImageCopyWith<$Res> {
  factory _$$_FlatImageCopyWith(
          _$_FlatImage value, $Res Function(_$_FlatImage) then) =
      __$$_FlatImageCopyWithImpl<$Res>;
  @override
  $Res call({String image, String location});
}

/// @nodoc
class __$$_FlatImageCopyWithImpl<$Res> extends _$FlatImageCopyWithImpl<$Res>
    implements _$$_FlatImageCopyWith<$Res> {
  __$$_FlatImageCopyWithImpl(
      _$_FlatImage _value, $Res Function(_$_FlatImage) _then)
      : super(_value, (v) => _then(v as _$_FlatImage));

  @override
  _$_FlatImage get _value => super._value as _$_FlatImage;

  @override
  $Res call({
    Object? image = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_FlatImage(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlatImage implements _FlatImage {
  const _$_FlatImage({required this.image, required this.location});

  factory _$_FlatImage.fromJson(Map<String, dynamic> json) =>
      _$$_FlatImageFromJson(json);

  @override
  final String image;
  @override
  final String location;

  @override
  String toString() {
    return 'FlatImage(image: $image, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlatImage &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_FlatImageCopyWith<_$_FlatImage> get copyWith =>
      __$$_FlatImageCopyWithImpl<_$_FlatImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlatImageToJson(
      this,
    );
  }
}

abstract class _FlatImage implements FlatImage {
  const factory _FlatImage(
      {required final String image,
      required final String location}) = _$_FlatImage;

  factory _FlatImage.fromJson(Map<String, dynamic> json) =
      _$_FlatImage.fromJson;

  @override
  String get image;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$_FlatImageCopyWith<_$_FlatImage> get copyWith =>
      throw _privateConstructorUsedError;
}
