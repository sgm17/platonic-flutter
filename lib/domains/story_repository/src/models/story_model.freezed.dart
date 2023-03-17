// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Story {
  int get id => throw _privateConstructorUsedError;
  AppUser get user => throw _privateConstructorUsedError;
  Faculty get faculty => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get favourite => throw _privateConstructorUsedError;
  List<AppUser>? get visualizations => throw _privateConstructorUsedError;
  @LinearGradientConverter()
  LinearGradient get backgroundGradientIndex =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res, Story>;
  @useResult
  $Res call(
      {int id,
      AppUser user,
      Faculty faculty,
      String body,
      DateTime creationDate,
      bool favourite,
      List<AppUser>? visualizations,
      @LinearGradientConverter() LinearGradient backgroundGradientIndex});

  $AppUserCopyWith<$Res> get user;
  $FacultyCopyWith<$Res> get faculty;
}

/// @nodoc
class _$StoryCopyWithImpl<$Res, $Val extends Story>
    implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

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
    Object? body = null,
    Object? creationDate = null,
    Object? favourite = null,
    Object? visualizations = freezed,
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
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favourite: null == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as bool,
      visualizations: freezed == visualizations
          ? _value.visualizations
          : visualizations // ignore: cast_nullable_to_non_nullable
              as List<AppUser>?,
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
abstract class _$$_StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$_StoryCopyWith(_$_Story value, $Res Function(_$_Story) then) =
      __$$_StoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      AppUser user,
      Faculty faculty,
      String body,
      DateTime creationDate,
      bool favourite,
      List<AppUser>? visualizations,
      @LinearGradientConverter() LinearGradient backgroundGradientIndex});

  @override
  $AppUserCopyWith<$Res> get user;
  @override
  $FacultyCopyWith<$Res> get faculty;
}

/// @nodoc
class __$$_StoryCopyWithImpl<$Res> extends _$StoryCopyWithImpl<$Res, _$_Story>
    implements _$$_StoryCopyWith<$Res> {
  __$$_StoryCopyWithImpl(_$_Story _value, $Res Function(_$_Story) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? faculty = null,
    Object? body = null,
    Object? creationDate = null,
    Object? favourite = null,
    Object? visualizations = freezed,
    Object? backgroundGradientIndex = null,
  }) {
    return _then(_$_Story(
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
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      favourite: null == favourite
          ? _value.favourite
          : favourite // ignore: cast_nullable_to_non_nullable
              as bool,
      visualizations: freezed == visualizations
          ? _value._visualizations
          : visualizations // ignore: cast_nullable_to_non_nullable
              as List<AppUser>?,
      backgroundGradientIndex: null == backgroundGradientIndex
          ? _value.backgroundGradientIndex
          : backgroundGradientIndex // ignore: cast_nullable_to_non_nullable
              as LinearGradient,
    ));
  }
}

/// @nodoc

class _$_Story extends _Story {
  _$_Story(
      {required this.id,
      required this.user,
      required this.faculty,
      required this.body,
      required this.creationDate,
      required this.favourite,
      required final List<AppUser>? visualizations,
      @LinearGradientConverter() required this.backgroundGradientIndex})
      : _visualizations = visualizations,
        super._();

  @override
  final int id;
  @override
  final AppUser user;
  @override
  final Faculty faculty;
  @override
  final String body;
  @override
  final DateTime creationDate;
  @override
  final bool favourite;
  final List<AppUser>? _visualizations;
  @override
  List<AppUser>? get visualizations {
    final value = _visualizations;
    if (value == null) return null;
    if (_visualizations is EqualUnmodifiableListView) return _visualizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @LinearGradientConverter()
  final LinearGradient backgroundGradientIndex;

  @override
  String toString() {
    return 'Story(id: $id, user: $user, faculty: $faculty, body: $body, creationDate: $creationDate, favourite: $favourite, visualizations: $visualizations, backgroundGradientIndex: $backgroundGradientIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Story &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.favourite, favourite) ||
                other.favourite == favourite) &&
            const DeepCollectionEquality()
                .equals(other._visualizations, _visualizations) &&
            (identical(
                    other.backgroundGradientIndex, backgroundGradientIndex) ||
                other.backgroundGradientIndex == backgroundGradientIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      faculty,
      body,
      creationDate,
      favourite,
      const DeepCollectionEquality().hash(_visualizations),
      backgroundGradientIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoryCopyWith<_$_Story> get copyWith =>
      __$$_StoryCopyWithImpl<_$_Story>(this, _$identity);
}

abstract class _Story extends Story {
  factory _Story(
      {required final int id,
      required final AppUser user,
      required final Faculty faculty,
      required final String body,
      required final DateTime creationDate,
      required final bool favourite,
      required final List<AppUser>? visualizations,
      @LinearGradientConverter()
          required final LinearGradient backgroundGradientIndex}) = _$_Story;
  _Story._() : super._();

  @override
  int get id;
  @override
  AppUser get user;
  @override
  Faculty get faculty;
  @override
  String get body;
  @override
  DateTime get creationDate;
  @override
  bool get favourite;
  @override
  List<AppUser>? get visualizations;
  @override
  @LinearGradientConverter()
  LinearGradient get backgroundGradientIndex;
  @override
  @JsonKey(ignore: true)
  _$$_StoryCopyWith<_$_Story> get copyWith =>
      throw _privateConstructorUsedError;
}
