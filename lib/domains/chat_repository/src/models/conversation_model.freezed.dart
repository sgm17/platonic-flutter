// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Conversation {
  int get id => throw _privateConstructorUsedError;
  AppUser get user1 => throw _privateConstructorUsedError;
  AppUser get user2 => throw _privateConstructorUsedError;
  List<Message>? get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res, Conversation>;
  @useResult
  $Res call({int id, AppUser user1, AppUser user2, List<Message>? messages});

  $AppUserCopyWith<$Res> get user1;
  $AppUserCopyWith<$Res> get user2;
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res, $Val extends Conversation>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1 = null,
    Object? user2 = null,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user1: null == user1
          ? _value.user1
          : user1 // ignore: cast_nullable_to_non_nullable
              as AppUser,
      user2: null == user2
          ? _value.user2
          : user2 // ignore: cast_nullable_to_non_nullable
              as AppUser,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user1 {
    return $AppUserCopyWith<$Res>(_value.user1, (value) {
      return _then(_value.copyWith(user1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user2 {
    return $AppUserCopyWith<$Res>(_value.user2, (value) {
      return _then(_value.copyWith(user2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConversationCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$_ConversationCopyWith(
          _$_Conversation value, $Res Function(_$_Conversation) then) =
      __$$_ConversationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, AppUser user1, AppUser user2, List<Message>? messages});

  @override
  $AppUserCopyWith<$Res> get user1;
  @override
  $AppUserCopyWith<$Res> get user2;
}

/// @nodoc
class __$$_ConversationCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res, _$_Conversation>
    implements _$$_ConversationCopyWith<$Res> {
  __$$_ConversationCopyWithImpl(
      _$_Conversation _value, $Res Function(_$_Conversation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1 = null,
    Object? user2 = null,
    Object? messages = freezed,
  }) {
    return _then(_$_Conversation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user1: null == user1
          ? _value.user1
          : user1 // ignore: cast_nullable_to_non_nullable
              as AppUser,
      user2: null == user2
          ? _value.user2
          : user2 // ignore: cast_nullable_to_non_nullable
              as AppUser,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ));
  }
}

/// @nodoc

class _$_Conversation extends _Conversation {
  const _$_Conversation(
      {required this.id,
      required this.user1,
      required this.user2,
      required final List<Message>? messages})
      : _messages = messages,
        super._();

  @override
  final int id;
  @override
  final AppUser user1;
  @override
  final AppUser user2;
  final List<Message>? _messages;
  @override
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Conversation(id: $id, user1: $user1, user2: $user2, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Conversation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user1, user1) || other.user1 == user1) &&
            (identical(other.user2, user2) || other.user2 == user2) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, user1, user2,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      __$$_ConversationCopyWithImpl<_$_Conversation>(this, _$identity);
}

abstract class _Conversation extends Conversation {
  const factory _Conversation(
      {required final int id,
      required final AppUser user1,
      required final AppUser user2,
      required final List<Message>? messages}) = _$_Conversation;
  const _Conversation._() : super._();

  @override
  int get id;
  @override
  AppUser get user1;
  @override
  AppUser get user2;
  @override
  List<Message>? get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}
