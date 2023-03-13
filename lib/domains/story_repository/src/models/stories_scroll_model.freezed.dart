// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_scroll_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoriesScroll {
  int get id => throw _privateConstructorUsedError;
  AppUser get user => throw _privateConstructorUsedError;
  Faculty get faculty => throw _privateConstructorUsedError;
  @LinearGradientConverter()
  LinearGradient get backgroundGradientIndex =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoriesScrollCopyWith<StoriesScroll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesScrollCopyWith<$Res> {
  factory $StoriesScrollCopyWith(
          StoriesScroll value, $Res Function(StoriesScroll) then) =
      _$StoriesScrollCopyWithImpl<$Res, StoriesScroll>;
  @useResult
  $Res call(
      {int id,
      AppUser user,
      Faculty faculty,
      @LinearGradientConverter() LinearGradient backgroundGradientIndex});

  $AppUserCopyWith<$Res> get user;
  $FacultyCopyWith<$Res> get faculty;
}

/// @nodoc
class _$StoriesScrollCopyWithImpl<$Res, $Val extends StoriesScroll>
    implements $StoriesScrollCopyWith<$Res> {
  _$StoriesScrollCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? faculty = null,
    Object? backgroundGradientIndex = null,
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
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
      backgroundGradientIndex: null == backgroundGradientIndex
          ? _value.backgroundGradientIndex
          : backgroundGradientIndex // ignore: cast_nullable_to_non_nullable
              as LinearGradient,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FacultyCopyWith<$Res> get faculty {
    return $FacultyCopyWith<$Res>(_value.faculty, (value) {
      return _then(_value.copyWith(faculty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StoriesScrollCopyWith<$Res>
    implements $StoriesScrollCopyWith<$Res> {
  factory _$$_StoriesScrollCopyWith(
          _$_StoriesScroll value, $Res Function(_$_StoriesScroll) then) =
      __$$_StoriesScrollCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      AppUser user,
      Faculty faculty,
      @LinearGradientConverter() LinearGradient backgroundGradientIndex});

  @override
  $AppUserCopyWith<$Res> get user;
  @override
  $FacultyCopyWith<$Res> get faculty;
}

/// @nodoc
class __$$_StoriesScrollCopyWithImpl<$Res>
    extends _$StoriesScrollCopyWithImpl<$Res, _$_StoriesScroll>
    implements _$$_StoriesScrollCopyWith<$Res> {
  __$$_StoriesScrollCopyWithImpl(
      _$_StoriesScroll _value, $Res Function(_$_StoriesScroll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? faculty = null,
    Object? backgroundGradientIndex = null,
  }) {
    return _then(_$_StoriesScroll(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
      backgroundGradientIndex: null == backgroundGradientIndex
          ? _value.backgroundGradientIndex
          : backgroundGradientIndex // ignore: cast_nullable_to_non_nullable
              as LinearGradient,
    ));
  }
}

/// @nodoc

class _$_StoriesScroll extends _StoriesScroll {
  const _$_StoriesScroll(
      {required this.id,
      required this.user,
      required this.faculty,
      @LinearGradientConverter() required this.backgroundGradientIndex})
      : super._();

  @override
  final int id;
  @override
  final AppUser user;
  @override
  final Faculty faculty;
  @override
  @LinearGradientConverter()
  final LinearGradient backgroundGradientIndex;

  @override
  String toString() {
    return 'StoriesScroll(id: $id, user: $user, faculty: $faculty, backgroundGradientIndex: $backgroundGradientIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesScroll &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(
                    other.backgroundGradientIndex, backgroundGradientIndex) ||
                other.backgroundGradientIndex == backgroundGradientIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, faculty, backgroundGradientIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesScrollCopyWith<_$_StoriesScroll> get copyWith =>
      __$$_StoriesScrollCopyWithImpl<_$_StoriesScroll>(this, _$identity);
}

abstract class _StoriesScroll extends StoriesScroll {
  const factory _StoriesScroll(
          {required final int id,
          required final AppUser user,
          required final Faculty faculty,
          @LinearGradientConverter()
              required final LinearGradient backgroundGradientIndex}) =
      _$_StoriesScroll;
  const _StoriesScroll._() : super._();

  @override
  int get id;
  @override
  AppUser get user;
  @override
  Faculty get faculty;
  @override
  @LinearGradientConverter()
  LinearGradient get backgroundGradientIndex;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesScrollCopyWith<_$_StoriesScroll> get copyWith =>
      throw _privateConstructorUsedError;
}
