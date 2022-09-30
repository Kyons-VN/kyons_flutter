// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get shouldShowErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get signInOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, User>> get currentUser =>
      throw _privateConstructorUsedError;
  Option<String> get redirectPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      String password,
      bool isSubmitting,
      bool shouldShowErrorMessages,
      Option<Either<AuthFailure, Unit>> signInOption,
      Option<Either<AuthFailure, User>> currentUser,
      Option<String> redirectPath});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? shouldShowErrorMessages = freezed,
    Object? signInOption = freezed,
    Object? currentUser = freezed,
    Object? redirectPath = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowErrorMessages: shouldShowErrorMessages == freezed
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      signInOption: signInOption == freezed
          ? _value.signInOption
          : signInOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
      redirectPath: redirectPath == freezed
          ? _value.redirectPath
          : redirectPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      String password,
      bool isSubmitting,
      bool shouldShowErrorMessages,
      Option<Either<AuthFailure, Unit>> signInOption,
      Option<Either<AuthFailure, User>> currentUser,
      Option<String> redirectPath});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? shouldShowErrorMessages = freezed,
    Object? signInOption = freezed,
    Object? currentUser = freezed,
    Object? redirectPath = freezed,
  }) {
    return _then(_$_SignInState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowErrorMessages: shouldShowErrorMessages == freezed
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      signInOption: signInOption == freezed
          ? _value.signInOption
          : signInOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
      redirectPath: redirectPath == freezed
          ? _value.redirectPath
          : redirectPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.shouldShowErrorMessages,
      required this.signInOption,
      required this.currentUser,
      required this.redirectPath});

  @override
  final EmailAddress emailAddress;
  @override
  final String password;
  @override
  final bool isSubmitting;
  @override
  final bool shouldShowErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> signInOption;
  @override
  final Option<Either<AuthFailure, User>> currentUser;
  @override
  final Option<String> redirectPath;

  @override
  String toString() {
    return 'SignInState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, shouldShowErrorMessages: $shouldShowErrorMessages, signInOption: $signInOption, currentUser: $currentUser, redirectPath: $redirectPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.shouldShowErrorMessages, shouldShowErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.signInOption, signInOption) &&
            const DeepCollectionEquality()
                .equals(other.currentUser, currentUser) &&
            const DeepCollectionEquality()
                .equals(other.redirectPath, redirectPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(shouldShowErrorMessages),
      const DeepCollectionEquality().hash(signInOption),
      const DeepCollectionEquality().hash(currentUser),
      const DeepCollectionEquality().hash(redirectPath));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final EmailAddress emailAddress,
      required final String password,
      required final bool isSubmitting,
      required final bool shouldShowErrorMessages,
      required final Option<Either<AuthFailure, Unit>> signInOption,
      required final Option<Either<AuthFailure, User>> currentUser,
      required final Option<String> redirectPath}) = _$_SignInState;

  @override
  EmailAddress get emailAddress;
  @override
  String get password;
  @override
  bool get isSubmitting;
  @override
  bool get shouldShowErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get signInOption;
  @override
  Option<Either<AuthFailure, User>> get currentUser;
  @override
  Option<String> get redirectPath;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
