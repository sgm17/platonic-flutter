// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  int get from => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  User get toUser => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  dynamic get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {int from, int to, User toUser, List<Message> messages, dynamic action});

  $UserCopyWith<$Res> get toUser;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? toUser = freezed,
    Object? messages = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      toUser: toUser == freezed
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as User,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  @override
  $UserCopyWith<$Res> get toUser {
    return $UserCopyWith<$Res>(_value.toUser, (value) {
      return _then(_value.copyWith(toUser: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {int from, int to, User toUser, List<Message> messages, dynamic action});

  @override
  $UserCopyWith<$Res> get toUser;
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, (v) => _then(v as _$_Chat));

  @override
  _$_Chat get _value => super._value as _$_Chat;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? toUser = freezed,
    Object? messages = freezed,
    Object? action = freezed,
  }) {
    return _then(_$_Chat(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      toUser: toUser == freezed
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as User,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.from,
      required this.to,
      required this.toUser,
      required this.messages,
      required this.action});

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override
  final int from;
  @override
  final int to;
  @override
  final User toUser;
  @override
  final List<Message> messages;
  @override
  final dynamic action;

  @override
  String toString() {
    return 'Chat(from: $from, to: $to, toUser: $toUser, messages: $messages, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.toUser, toUser) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(toUser),
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(
      this,
    );
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required final int from,
      required final int to,
      required final User toUser,
      required final List<Message> messages,
      required final dynamic action}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  int get from;
  @override
  int get to;
  @override
  User get toUser;
  @override
  List<Message> get messages;
  @override
  dynamic get action;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}
