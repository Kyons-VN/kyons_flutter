// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_info_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateInfoState {
  Option<User> get user => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  XFile get profilePicture => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get shouldShowErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateInfoStateCopyWith<UpdateInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateInfoStateCopyWith<$Res> {
  factory $UpdateInfoStateCopyWith(
          UpdateInfoState value, $Res Function(UpdateInfoState) then) =
      _$UpdateInfoStateCopyWithImpl<$Res, UpdateInfoState>;
  @useResult
  $Res call(
      {Option<User> user,
      bool isSubmitting,
      String firstName,
      String lastName,
      EmailAddress email,
      XFile profilePicture,
      bool isLoading,
      bool shouldShowErrorMessages});
}

/// @nodoc
class _$UpdateInfoStateCopyWithImpl<$Res, $Val extends UpdateInfoState>
    implements $UpdateInfoStateCopyWith<$Res> {
  _$UpdateInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isSubmitting = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? profilePicture = null,
    Object? isLoading = null,
    Object? shouldShowErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<User>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as XFile,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowErrorMessages: null == shouldShowErrorMessages
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateInfoStateImplCopyWith<$Res>
    implements $UpdateInfoStateCopyWith<$Res> {
  factory _$$UpdateInfoStateImplCopyWith(_$UpdateInfoStateImpl value,
          $Res Function(_$UpdateInfoStateImpl) then) =
      __$$UpdateInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<User> user,
      bool isSubmitting,
      String firstName,
      String lastName,
      EmailAddress email,
      XFile profilePicture,
      bool isLoading,
      bool shouldShowErrorMessages});
}

/// @nodoc
class __$$UpdateInfoStateImplCopyWithImpl<$Res>
    extends _$UpdateInfoStateCopyWithImpl<$Res, _$UpdateInfoStateImpl>
    implements _$$UpdateInfoStateImplCopyWith<$Res> {
  __$$UpdateInfoStateImplCopyWithImpl(
      _$UpdateInfoStateImpl _value, $Res Function(_$UpdateInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isSubmitting = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? profilePicture = null,
    Object? isLoading = null,
    Object? shouldShowErrorMessages = null,
  }) {
    return _then(_$UpdateInfoStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<User>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as XFile,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowErrorMessages: null == shouldShowErrorMessages
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateInfoStateImpl implements _UpdateInfoState {
  const _$UpdateInfoStateImpl(
      {required this.user,
      required this.isSubmitting,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.profilePicture,
      required this.isLoading,
      required this.shouldShowErrorMessages});

  @override
  final Option<User> user;
  @override
  final bool isSubmitting;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final EmailAddress email;
  @override
  final XFile profilePicture;
  @override
  final bool isLoading;
  @override
  final bool shouldShowErrorMessages;

  @override
  String toString() {
    return 'UpdateInfoState(user: $user, isSubmitting: $isSubmitting, firstName: $firstName, lastName: $lastName, email: $email, profilePicture: $profilePicture, isLoading: $isLoading, shouldShowErrorMessages: $shouldShowErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(
                    other.shouldShowErrorMessages, shouldShowErrorMessages) ||
                other.shouldShowErrorMessages == shouldShowErrorMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isSubmitting, firstName,
      lastName, email, profilePicture, isLoading, shouldShowErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInfoStateImplCopyWith<_$UpdateInfoStateImpl> get copyWith =>
      __$$UpdateInfoStateImplCopyWithImpl<_$UpdateInfoStateImpl>(
          this, _$identity);
}

abstract class _UpdateInfoState implements UpdateInfoState {
  const factory _UpdateInfoState(
      {required final Option<User> user,
      required final bool isSubmitting,
      required final String firstName,
      required final String lastName,
      required final EmailAddress email,
      required final XFile profilePicture,
      required final bool isLoading,
      required final bool shouldShowErrorMessages}) = _$UpdateInfoStateImpl;

  @override
  Option<User> get user;
  @override
  bool get isSubmitting;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  EmailAddress get email;
  @override
  XFile get profilePicture;
  @override
  bool get isLoading;
  @override
  bool get shouldShowErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$UpdateInfoStateImplCopyWith<_$UpdateInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
