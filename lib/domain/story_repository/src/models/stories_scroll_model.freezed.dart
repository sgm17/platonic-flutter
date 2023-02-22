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

StoriesScroll _$StoriesScrollFromJson(Map<String, dynamic> json) {
  return _StoriesScroll.fromJson(json);
}

/// @nodoc
mixin _$StoriesScroll {
  AppUser get appUser => throw _privateConstructorUsedError;
  Faculty get faculty => throw _privateConstructorUsedError;
  String? get backgroundImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call({AppUser appUser, Faculty faculty, String? backgroundImage});

  $AppUserCopyWith<$Res> get appUser;
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
    Object? appUser = null,
    Object? faculty = null,
    Object? backgroundImage = freezed,
  }) {
    return _then(_value.copyWith(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value) as $Val);
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
  $Res call({AppUser appUser, Faculty faculty, String? backgroundImage});

  @override
  $AppUserCopyWith<$Res> get appUser;
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
    Object? appUser = null,
    Object? faculty = null,
    Object? backgroundImage = freezed,
  }) {
    return _then(_$_StoriesScroll(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as Faculty,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoriesScroll implements _StoriesScroll {
  const _$_StoriesScroll(
      {required this.appUser,
      required this.faculty,
      this.backgroundImage =
          "assets/images/36c0815a7435b728898d67811e50214f1bff69e4.png"});

  factory _$_StoriesScroll.fromJson(Map<String, dynamic> json) =>
      _$$_StoriesScrollFromJson(json);

  @override
  final AppUser appUser;
  @override
  final Faculty faculty;
  @override
  @JsonKey()
  final String? backgroundImage;

  @override
  String toString() {
    return 'StoriesScroll(appUser: $appUser, faculty: $faculty, backgroundImage: $backgroundImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesScroll &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.faculty, faculty) || other.faculty == faculty) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appUser, faculty, backgroundImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesScrollCopyWith<_$_StoriesScroll> get copyWith =>
      __$$_StoriesScrollCopyWithImpl<_$_StoriesScroll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoriesScrollToJson(
      this,
    );
  }
}

abstract class _StoriesScroll implements StoriesScroll {
  const factory _StoriesScroll(
      {required final AppUser appUser,
      required final Faculty faculty,
      final String? backgroundImage}) = _$_StoriesScroll;

  factory _StoriesScroll.fromJson(Map<String, dynamic> json) =
      _$_StoriesScroll.fromJson;

  @override
  AppUser get appUser;
  @override
  Faculty get faculty;
  @override
  String? get backgroundImage;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesScrollCopyWith<_$_StoriesScroll> get copyWith =>
      throw _privateConstructorUsedError;
}
