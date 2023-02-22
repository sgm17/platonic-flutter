// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meets_scroll_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetsScroll _$MeetsScrollFromJson(Map<String, dynamic> json) {
  return _MeetsScroll.fromJson(json);
}

/// @nodoc
mixin _$MeetsScroll {
  AppUser get appUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetsScrollCopyWith<MeetsScroll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetsScrollCopyWith<$Res> {
  factory $MeetsScrollCopyWith(
          MeetsScroll value, $Res Function(MeetsScroll) then) =
      _$MeetsScrollCopyWithImpl<$Res, MeetsScroll>;
  @useResult
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class _$MeetsScrollCopyWithImpl<$Res, $Val extends MeetsScroll>
    implements $MeetsScrollCopyWith<$Res> {
  _$MeetsScrollCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_value.copyWith(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MeetsScrollCopyWith<$Res>
    implements $MeetsScrollCopyWith<$Res> {
  factory _$$_MeetsScrollCopyWith(
          _$_MeetsScroll value, $Res Function(_$_MeetsScroll) then) =
      __$$_MeetsScrollCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser appUser});

  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_MeetsScrollCopyWithImpl<$Res>
    extends _$MeetsScrollCopyWithImpl<$Res, _$_MeetsScroll>
    implements _$$_MeetsScrollCopyWith<$Res> {
  __$$_MeetsScrollCopyWithImpl(
      _$_MeetsScroll _value, $Res Function(_$_MeetsScroll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_$_MeetsScroll(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetsScroll implements _MeetsScroll {
  const _$_MeetsScroll({required this.appUser});

  factory _$_MeetsScroll.fromJson(Map<String, dynamic> json) =>
      _$$_MeetsScrollFromJson(json);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'MeetsScroll(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetsScroll &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetsScrollCopyWith<_$_MeetsScroll> get copyWith =>
      __$$_MeetsScrollCopyWithImpl<_$_MeetsScroll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetsScrollToJson(
      this,
    );
  }
}

abstract class _MeetsScroll implements MeetsScroll {
  const factory _MeetsScroll({required final AppUser appUser}) = _$_MeetsScroll;

  factory _MeetsScroll.fromJson(Map<String, dynamic> json) =
      _$_MeetsScroll.fromJson;

  @override
  AppUser get appUser;
  @override
  @JsonKey(ignore: true)
  _$$_MeetsScrollCopyWith<_$_MeetsScroll> get copyWith =>
      throw _privateConstructorUsedError;
}
