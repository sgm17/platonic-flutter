// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_story_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeStory {
  List<LastStoryIdsPerUniversity> get lastStoryIdsPerUniversity =>
      throw _privateConstructorUsedError;
  University? get university => throw _privateConstructorUsedError;
  List<Story> get stories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStoryCopyWith<HomeStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStoryCopyWith<$Res> {
  factory $HomeStoryCopyWith(HomeStory value, $Res Function(HomeStory) then) =
      _$HomeStoryCopyWithImpl<$Res>;
  $Res call(
      {List<LastStoryIdsPerUniversity> lastStoryIdsPerUniversity,
      University? university,
      List<Story> stories});

  $UniversityCopyWith<$Res>? get university;
}

/// @nodoc
class _$HomeStoryCopyWithImpl<$Res> implements $HomeStoryCopyWith<$Res> {
  _$HomeStoryCopyWithImpl(this._value, this._then);

  final HomeStory _value;
  // ignore: unused_field
  final $Res Function(HomeStory) _then;

  @override
  $Res call({
    Object? lastStoryIdsPerUniversity = freezed,
    Object? university = freezed,
    Object? stories = freezed,
  }) {
    return _then(_value.copyWith(
      lastStoryIdsPerUniversity: lastStoryIdsPerUniversity == freezed
          ? _value.lastStoryIdsPerUniversity
          : lastStoryIdsPerUniversity // ignore: cast_nullable_to_non_nullable
              as List<LastStoryIdsPerUniversity>,
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University?,
      stories: stories == freezed
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }

  @override
  $UniversityCopyWith<$Res>? get university {
    if (_value.university == null) {
      return null;
    }

    return $UniversityCopyWith<$Res>(_value.university!, (value) {
      return _then(_value.copyWith(university: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeStoryCopyWith<$Res> implements $HomeStoryCopyWith<$Res> {
  factory _$$_HomeStoryCopyWith(
          _$_HomeStory value, $Res Function(_$_HomeStory) then) =
      __$$_HomeStoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<LastStoryIdsPerUniversity> lastStoryIdsPerUniversity,
      University? university,
      List<Story> stories});

  @override
  $UniversityCopyWith<$Res>? get university;
}

/// @nodoc
class __$$_HomeStoryCopyWithImpl<$Res> extends _$HomeStoryCopyWithImpl<$Res>
    implements _$$_HomeStoryCopyWith<$Res> {
  __$$_HomeStoryCopyWithImpl(
      _$_HomeStory _value, $Res Function(_$_HomeStory) _then)
      : super(_value, (v) => _then(v as _$_HomeStory));

  @override
  _$_HomeStory get _value => super._value as _$_HomeStory;

  @override
  $Res call({
    Object? lastStoryIdsPerUniversity = freezed,
    Object? university = freezed,
    Object? stories = freezed,
  }) {
    return _then(_$_HomeStory(
      lastStoryIdsPerUniversity: lastStoryIdsPerUniversity == freezed
          ? _value._lastStoryIdsPerUniversity
          : lastStoryIdsPerUniversity // ignore: cast_nullable_to_non_nullable
              as List<LastStoryIdsPerUniversity>,
      university: university == freezed
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as University?,
      stories: stories == freezed
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc

class _$_HomeStory implements _HomeStory {
  const _$_HomeStory(
      {required final List<LastStoryIdsPerUniversity> lastStoryIdsPerUniversity,
      this.university,
      required final List<Story> stories})
      : _lastStoryIdsPerUniversity = lastStoryIdsPerUniversity,
        _stories = stories;

  final List<LastStoryIdsPerUniversity> _lastStoryIdsPerUniversity;
  @override
  List<LastStoryIdsPerUniversity> get lastStoryIdsPerUniversity {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastStoryIdsPerUniversity);
  }

  @override
  final University? university;
  final List<Story> _stories;
  @override
  List<Story> get stories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'HomeStory(lastStoryIdsPerUniversity: $lastStoryIdsPerUniversity, university: $university, stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStory &&
            const DeepCollectionEquality().equals(
                other._lastStoryIdsPerUniversity, _lastStoryIdsPerUniversity) &&
            const DeepCollectionEquality()
                .equals(other.university, university) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lastStoryIdsPerUniversity),
      const DeepCollectionEquality().hash(university),
      const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStoryCopyWith<_$_HomeStory> get copyWith =>
      __$$_HomeStoryCopyWithImpl<_$_HomeStory>(this, _$identity);
}

abstract class _HomeStory implements HomeStory {
  const factory _HomeStory(
      {required final List<LastStoryIdsPerUniversity> lastStoryIdsPerUniversity,
      final University? university,
      required final List<Story> stories}) = _$_HomeStory;

  @override
  List<LastStoryIdsPerUniversity> get lastStoryIdsPerUniversity;
  @override
  University? get university;
  @override
  List<Story> get stories;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStoryCopyWith<_$_HomeStory> get copyWith =>
      throw _privateConstructorUsedError;
}
