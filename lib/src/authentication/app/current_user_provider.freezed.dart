// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentUserState {
  Option<User> get userOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentUserStateCopyWith<CurrentUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserStateCopyWith<$Res> {
  factory $CurrentUserStateCopyWith(
          CurrentUserState value, $Res Function(CurrentUserState) then) =
      _$CurrentUserStateCopyWithImpl<$Res, CurrentUserState>;
  @useResult
  $Res call({Option<User> userOption});
}

/// @nodoc
class _$CurrentUserStateCopyWithImpl<$Res, $Val extends CurrentUserState>
    implements $CurrentUserStateCopyWith<$Res> {
  _$CurrentUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOption = null,
  }) {
    return _then(_value.copyWith(
      userOption: null == userOption
          ? _value.userOption
          : userOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentUserStateCopyWith<$Res>
    implements $CurrentUserStateCopyWith<$Res> {
  factory _$$_CurrentUserStateCopyWith(
          _$_CurrentUserState value, $Res Function(_$_CurrentUserState) then) =
      __$$_CurrentUserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<User> userOption});
}

/// @nodoc
class __$$_CurrentUserStateCopyWithImpl<$Res>
    extends _$CurrentUserStateCopyWithImpl<$Res, _$_CurrentUserState>
    implements _$$_CurrentUserStateCopyWith<$Res> {
  __$$_CurrentUserStateCopyWithImpl(
      _$_CurrentUserState _value, $Res Function(_$_CurrentUserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOption = null,
  }) {
    return _then(_$_CurrentUserState(
      userOption: null == userOption
          ? _value.userOption
          : userOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
    ));
  }
}

/// @nodoc

class _$_CurrentUserState implements _CurrentUserState {
  const _$_CurrentUserState({required this.userOption});

  @override
  final Option<User> userOption;

  @override
  String toString() {
    return 'CurrentUserState(userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentUserState &&
            (identical(other.userOption, userOption) ||
                other.userOption == userOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentUserStateCopyWith<_$_CurrentUserState> get copyWith =>
      __$$_CurrentUserStateCopyWithImpl<_$_CurrentUserState>(this, _$identity);
}

abstract class _CurrentUserState implements CurrentUserState {
  const factory _CurrentUserState({required final Option<User> userOption}) =
      _$_CurrentUserState;

  @override
  Option<User> get userOption;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentUserStateCopyWith<_$_CurrentUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
