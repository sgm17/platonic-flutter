// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visualization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Visualization {
  int get id => throw _privateConstructorUsedError;
  AppUser get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisualizationCopyWith<Visualization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisualizationCopyWith<$Res> {
  factory $VisualizationCopyWith(
          Visualization value, $Res Function(Visualization) then) =
      _$VisualizationCopyWithImpl<$Res, Visualization>;
  @useResult
  $Res call({int id, AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$VisualizationCopyWithImpl<$Res, $Val extends Visualization>
    implements $VisualizationCopyWith<$Res> {
  _$VisualizationCopyWithImpl(this._value, this._then);

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
abstract class _$$_VisualizationCopyWith<$Res>
    implements $VisualizationCopyWith<$Res> {
  factory _$$_VisualizationCopyWith(
          _$_Visualization value, $Res Function(_$_Visualization) then) =
      __$$_VisualizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, AppUser user});

  @override
  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_VisualizationCopyWithImpl<$Res>
    extends _$VisualizationCopyWithImpl<$Res, _$_Visualization>
    implements _$$_VisualizationCopyWith<$Res> {
  __$$_VisualizationCopyWithImpl(
      _$_Visualization _value, $Res Function(_$_Visualization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$_Visualization(
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

class _$_Visualization extends _Visualization {
  _$_Visualization({required this.id, required this.user}) : super._();

  @override
  final int id;
  @override
  final AppUser user;

  @override
  String toString() {
    return 'Visualization(id: $id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Visualization &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisualizationCopyWith<_$_Visualization> get copyWith =>
      __$$_VisualizationCopyWithImpl<_$_Visualization>(this, _$identity);
}

abstract class _Visualization extends Visualization {
  factory _Visualization({required final int id, required final AppUser user}) =
      _$_Visualization;
  _Visualization._() : super._();

  @override
  int get id;
  @override
  AppUser get user;
  @override
  @JsonKey(ignore: true)
  _$$_VisualizationCopyWith<_$_Visualization> get copyWith =>
      throw _privateConstructorUsedError;
}
