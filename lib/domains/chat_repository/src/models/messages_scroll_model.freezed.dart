// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_scroll_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagesScroll _$MessagesScrollFromJson(Map<String, dynamic> json) {
  return _MessagesScroll.fromJson(json);
}

/// @nodoc
mixin _$MessagesScroll {
  AppUser get appUser => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesScrollCopyWith<MessagesScroll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesScrollCopyWith<$Res> {
  factory $MessagesScrollCopyWith(
          MessagesScroll value, $Res Function(MessagesScroll) then) =
      _$MessagesScrollCopyWithImpl<$Res, MessagesScroll>;
  @useResult
  $Res call({AppUser appUser, String lastMessage});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class _$MessagesScrollCopyWithImpl<$Res, $Val extends MessagesScroll>
    implements $MessagesScrollCopyWith<$Res> {
  _$MessagesScrollCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
    Object? lastMessage = null,
  }) {
    return _then(_value.copyWith(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_MessagesScrollCopyWith<$Res>
    implements $MessagesScrollCopyWith<$Res> {
  factory _$$_MessagesScrollCopyWith(
          _$_MessagesScroll value, $Res Function(_$_MessagesScroll) then) =
      __$$_MessagesScrollCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser appUser, String lastMessage});

  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_MessagesScrollCopyWithImpl<$Res>
    extends _$MessagesScrollCopyWithImpl<$Res, _$_MessagesScroll>
    implements _$$_MessagesScrollCopyWith<$Res> {
  __$$_MessagesScrollCopyWithImpl(
      _$_MessagesScroll _value, $Res Function(_$_MessagesScroll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
    Object? lastMessage = null,
  }) {
    return _then(_$_MessagesScroll(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagesScroll implements _MessagesScroll {
  const _$_MessagesScroll({required this.appUser, required this.lastMessage});

  factory _$_MessagesScroll.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesScrollFromJson(json);

  @override
  final AppUser appUser;
  @override
  final String lastMessage;

  @override
  String toString() {
    return 'MessagesScroll(appUser: $appUser, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessagesScroll &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appUser, lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessagesScrollCopyWith<_$_MessagesScroll> get copyWith =>
      __$$_MessagesScrollCopyWithImpl<_$_MessagesScroll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesScrollToJson(
      this,
    );
  }
}

abstract class _MessagesScroll implements MessagesScroll {
  const factory _MessagesScroll(
      {required final AppUser appUser,
      required final String lastMessage}) = _$_MessagesScroll;

  factory _MessagesScroll.fromJson(Map<String, dynamic> json) =
      _$_MessagesScroll.fromJson;

  @override
  AppUser get appUser;
  @override
  String get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MessagesScrollCopyWith<_$_MessagesScroll> get copyWith =>
      throw _privateConstructorUsedError;
}
