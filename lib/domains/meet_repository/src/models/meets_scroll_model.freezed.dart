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

/// @nodoc
mixin _$MeetsScroll {
  int get id => throw _privateConstructorUsedError;
  AppUser get user => throw _privateConstructorUsedError;

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
  $Res call({int id, AppUser user});

  $AppUserCopyWith<$Res> get user;
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
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
  $Res call({int id, AppUser user});

  @override
  $AppUserCopyWith<$Res> get user;
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
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$_MeetsScroll(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$_MeetsScroll extends _MeetsScroll {
  const _$_MeetsScroll({required this.id, required this.user}) : super._();

  @override
  final int id;
  @override
  final AppUser user;

  @override
  String toString() {
    return 'MeetsScroll(id: $id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetsScroll &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetsScrollCopyWith<_$_MeetsScroll> get copyWith =>
      __$$_MeetsScrollCopyWithImpl<_$_MeetsScroll>(this, _$identity);
}

abstract class _MeetsScroll extends MeetsScroll {
  const factory _MeetsScroll(
      {required final int id, required final AppUser user}) = _$_MeetsScroll;
  const _MeetsScroll._() : super._();

  @override
  int get id;
  @override
  AppUser get user;
  @override
  @JsonKey(ignore: true)
  _$$_MeetsScrollCopyWith<_$_MeetsScroll> get copyWith =>
      throw _privateConstructorUsedError;
}
