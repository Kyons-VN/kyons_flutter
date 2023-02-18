// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T? get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, String? reason) invalidEmail,
    required TResult Function(T? failedValue, int? minLength, String? reason)
        shortText,
    required TResult Function(T? failedValue, String? reason) emptyValue,
    required TResult Function(T? failedValue) multilines,
    required TResult Function(T? failedValue, int? maxLength) longText,
    required TResult Function(T? failedValue, int? maxLength) longList,
    required TResult Function(T? failedValue, String? reason) localStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, String? reason)? invalidEmail,
    TResult? Function(T? failedValue, int? minLength, String? reason)?
        shortText,
    TResult? Function(T? failedValue, String? reason)? emptyValue,
    TResult? Function(T? failedValue)? multilines,
    TResult? Function(T? failedValue, int? maxLength)? longText,
    TResult? Function(T? failedValue, int? maxLength)? longList,
    TResult? Function(T? failedValue, String? reason)? localStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, String? reason)? invalidEmail,
    TResult Function(T? failedValue, int? minLength, String? reason)? shortText,
    TResult Function(T? failedValue, String? reason)? emptyValue,
    TResult Function(T? failedValue)? multilines,
    TResult Function(T? failedValue, int? maxLength)? longText,
    TResult Function(T? failedValue, int? maxLength)? longList,
    TResult Function(T? failedValue, String? reason)? localStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortText<T> value) shortText,
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(Multilines<T> value) multilines,
    required TResult Function(LongText<T> value) longText,
    required TResult Function(LongList<T> value) longList,
    required TResult Function(LocalStorage<T> value) localStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortText<T> value)? shortText,
    TResult? Function(EmptyValue<T> value)? emptyValue,
    TResult? Function(Multilines<T> value)? multilines,
    TResult? Function(LongText<T> value)? longText,
    TResult? Function(LongList<T> value)? longList,
    TResult? Function(LocalStorage<T> value)? localStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortText<T> value)? shortText,
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(Multilines<T> value)? multilines,
    TResult Function(LongText<T> value)? longText,
    TResult Function(LongList<T> value)? longList,
    TResult Function(LocalStorage<T> value)? localStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue, String? reason});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmail<T>>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({this.failedValue, this.reason});

  @override
  final T? failedValue;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, String? reason) invalidEmail,
    required TResult Function(T? failedValue, int? minLength, String? reason)
        shortText,
    required TResult Function(T? failedValue, String? reason) emptyValue,
    required TResult Function(T? failedValue) multilines,
    required TResult Function(T? failedValue, int? maxLength) longText,
    required TResult Function(T? failedValue, int? maxLength) longList,
    required TResult Function(T? failedValue, String? reason) localStorage,
  }) {
    return invalidEmail(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, String? reason)? invalidEmail,
    TResult? Function(T? failedValue, int? minLength, String? reason)?
        shortText,
    TResult? Function(T? failedValue, String? reason)? emptyValue,
    TResult? Function(T? failedValue)? multilines,
    TResult? Function(T? failedValue, int? maxLength)? longText,
    TResult? Function(T? failedValue, int? maxLength)? longList,
    TResult? Function(T? failedValue, String? reason)? localStorage,
  }) {
    return invalidEmail?.call(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, String? reason)? invalidEmail,
    TResult Function(T? failedValue, int? minLength, String? reason)? shortText,
    TResult Function(T? failedValue, String? reason)? emptyValue,
    TResult Function(T? failedValue)? multilines,
    TResult Function(T? failedValue, int? maxLength)? longText,
    TResult Function(T? failedValue, int? maxLength)? longList,
    TResult Function(T? failedValue, String? reason)? localStorage,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortText<T> value) shortText,
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(Multilines<T> value) multilines,
    required TResult Function(LongText<T> value) longText,
    required TResult Function(LongList<T> value) longList,
    required TResult Function(LocalStorage<T> value) localStorage,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortText<T> value)? shortText,
    TResult? Function(EmptyValue<T> value)? emptyValue,
    TResult? Function(Multilines<T> value)? multilines,
    TResult? Function(LongText<T> value)? longText,
    TResult? Function(LongList<T> value)? longList,
    TResult? Function(LocalStorage<T> value)? localStorage,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortText<T> value)? shortText,
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(Multilines<T> value)? multilines,
    TResult Function(LongText<T> value)? longText,
    TResult Function(LongList<T> value)? longList,
    TResult Function(LocalStorage<T> value)? localStorage,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({final T? failedValue, final String? reason}) =
      _$InvalidEmail<T>;

  @override
  T? get failedValue;
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortTextCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortTextCopyWith(
          _$ShortText<T> value, $Res Function(_$ShortText<T>) then) =
      __$$ShortTextCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue, int? minLength, String? reason});
}

/// @nodoc
class __$$ShortTextCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortText<T>>
    implements _$$ShortTextCopyWith<T, $Res> {
  __$$ShortTextCopyWithImpl(
      _$ShortText<T> _value, $Res Function(_$ShortText<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? minLength = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$ShortText<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      minLength: freezed == minLength
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShortText<T> implements ShortText<T> {
  const _$ShortText({this.failedValue, this.minLength, this.reason});

  @override
  final T? failedValue;
  @override
  final int? minLength;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortText(failedValue: $failedValue, minLength: $minLength, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortText<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(failedValue), minLength, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortTextCopyWith<T, _$ShortText<T>> get copyWith =>
      __$$ShortTextCopyWithImpl<T, _$ShortText<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, String? reason) invalidEmail,
    required TResult Function(T? failedValue, int? minLength, String? reason)
        shortText,
    required TResult Function(T? failedValue, String? reason) emptyValue,
    required TResult Function(T? failedValue) multilines,
    required TResult Function(T? failedValue, int? maxLength) longText,
    required TResult Function(T? failedValue, int? maxLength) longList,
    required TResult Function(T? failedValue, String? reason) localStorage,
  }) {
    return shortText(failedValue, minLength, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, String? reason)? invalidEmail,
    TResult? Function(T? failedValue, int? minLength, String? reason)?
        shortText,
    TResult? Function(T? failedValue, String? reason)? emptyValue,
    TResult? Function(T? failedValue)? multilines,
    TResult? Function(T? failedValue, int? maxLength)? longText,
    TResult? Function(T? failedValue, int? maxLength)? longList,
    TResult? Function(T? failedValue, String? reason)? localStorage,
  }) {
    return shortText?.call(failedValue, minLength, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, String? reason)? invalidEmail,
    TResult Function(T? failedValue, int? minLength, String? reason)? shortText,
    TResult Function(T? failedValue, String? reason)? emptyValue,
    TResult Function(T? failedValue)? multilines,
    TResult Function(T? failedValue, int? maxLength)? longText,
    TResult Function(T? failedValue, int? maxLength)? longList,
    TResult Function(T? failedValue, String? reason)? localStorage,
    required TResult orElse(),
  }) {
    if (shortText != null) {
      return shortText(failedValue, minLength, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortText<T> value) shortText,
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(Multilines<T> value) multilines,
    required TResult Function(LongText<T> value) longText,
    required TResult Function(LongList<T> value) longList,
    required TResult Function(LocalStorage<T> value) localStorage,
  }) {
    return shortText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortText<T> value)? shortText,
    TResult? Function(EmptyValue<T> value)? emptyValue,
    TResult? Function(Multilines<T> value)? multilines,
    TResult? Function(LongText<T> value)? longText,
    TResult? Function(LongList<T> value)? longList,
    TResult? Function(LocalStorage<T> value)? localStorage,
  }) {
    return shortText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortText<T> value)? shortText,
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(Multilines<T> value)? multilines,
    TResult Function(LongText<T> value)? longText,
    TResult Function(LongList<T> value)? longList,
    TResult Function(LocalStorage<T> value)? localStorage,
    required TResult orElse(),
  }) {
    if (shortText != null) {
      return shortText(this);
    }
    return orElse();
  }
}

abstract class ShortText<T> implements ValueFailure<T> {
  const factory ShortText(
      {final T? failedValue,
      final int? minLength,
      final String? reason}) = _$ShortText<T>;

  @override
  T? get failedValue;
  int? get minLength;
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$ShortTextCopyWith<T, _$ShortText<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyValueCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyValueCopyWith(
          _$EmptyValue<T> value, $Res Function(_$EmptyValue<T>) then) =
      __$$EmptyValueCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue, String? reason});
}

/// @nodoc
class __$$EmptyValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyValue<T>>
    implements _$$EmptyValueCopyWith<T, $Res> {
  __$$EmptyValueCopyWithImpl(
      _$EmptyValue<T> _value, $Res Function(_$EmptyValue<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$EmptyValue<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmptyValue<T> implements EmptyValue<T> {
  const _$EmptyValue({this.failedValue, this.reason});

  @override
  final T? failedValue;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyValue(failedValue: $failedValue, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyValue<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyValueCopyWith<T, _$EmptyValue<T>> get copyWith =>
      __$$EmptyValueCopyWithImpl<T, _$EmptyValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, String? reason) invalidEmail,
    required TResult Function(T? failedValue, int? minLength, String? reason)
        shortText,
    required TResult Function(T? failedValue, String? reason) emptyValue,
    required TResult Function(T? failedValue) multilines,
    required TResult Function(T? failedValue, int? maxLength) longText,
    required TResult Function(T? failedValue, int? maxLength) longList,
    required TResult Function(T? failedValue, String? reason) localStorage,
  }) {
    return emptyValue(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, String? reason)? invalidEmail,
    TResult? Function(T? failedValue, int? minLength, String? reason)?
        shortText,
    TResult? Function(T? failedValue, String? reason)? emptyValue,
    TResult? Function(T? failedValue)? multilines,
    TResult? Function(T? failedValue, int? maxLength)? longText,
    TResult? Function(T? failedValue, int? maxLength)? longList,
    TResult? Function(T? failedValue, String? reason)? localStorage,
  }) {
    return emptyValue?.call(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, String? reason)? invalidEmail,
    TResult Function(T? failedValue, int? minLength, String? reason)? shortText,
    TResult Function(T? failedValue, String? reason)? emptyValue,
    TResult Function(T? failedValue)? multilines,
    TResult Function(T? failedValue, int? maxLength)? longText,
    TResult Function(T? failedValue, int? maxLength)? longList,
    TResult Function(T? failedValue, String? reason)? localStorage,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(failedValue, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortText<T> value) shortText,
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(Multilines<T> value) multilines,
    required TResult Function(LongText<T> value) longText,
    required TResult Function(LongList<T> value) longList,
    required TResult Function(LocalStorage<T> value) localStorage,
  }) {
    return emptyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortText<T> value)? shortText,
    TResult? Function(EmptyValue<T> value)? emptyValue,
    TResult? Function(Multilines<T> value)? multilines,
    TResult? Function(LongText<T> value)? longText,
    TResult? Function(LongList<T> value)? longList,
    TResult? Function(LocalStorage<T> value)? localStorage,
  }) {
    return emptyValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortText<T> value)? shortText,
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(Multilines<T> value)? multilines,
    TResult Function(LongText<T> value)? longText,
    TResult Function(LongList<T> value)? longList,
    TResult Function(LocalStorage<T> value)? localStorage,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(this);
    }
    return orElse();
  }
}

abstract class EmptyValue<T> implements ValueFailure<T> {
  const factory EmptyValue({final T? failedValue, final String? reason}) =
      _$EmptyValue<T>;

  @override
  T? get failedValue;
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$EmptyValueCopyWith<T, _$EmptyValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultilinesCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultilinesCopyWith(
          _$Multilines<T> value, $Res Function(_$Multilines<T>) then) =
      __$$MultilinesCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$MultilinesCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Multilines<T>>
    implements _$$MultilinesCopyWith<T, $Res> {
  __$$MultilinesCopyWithImpl(
      _$Multilines<T> _value, $Res Function(_$Multilines<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Multilines<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$Multilines<T> implements Multilines<T> {
  const _$Multilines({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multilines(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Multilines<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultilinesCopyWith<T, _$Multilines<T>> get copyWith =>
      __$$MultilinesCopyWithImpl<T, _$Multilines<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, String? reason) invalidEmail,
    required TResult Function(T? failedValue, int? minLength, String? reason)
        shortText,
    required TResult Function(T? failedValue, String? reason) emptyValue,
    required TResult Function(T? failedValue) multilines,
    required TResult Function(T? failedValue, int? maxLength) longText,
    required TResult Function(T? failedValue, int? maxLength) longList,
    required TResult Function(T? failedValue, String? reason) localStorage,
  }) {
    return multilines(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, String? reason)? invalidEmail,
    TResult? Function(T? failedValue, int? minLength, String? reason)?
        shortText,
    TResult? Function(T? failedValue, String? reason)? emptyValue,
    TResult? Function(T? failedValue)? multilines,
    TResult? Function(T? failedValue, int? maxLength)? longText,
    TResult? Function(T? failedValue, int? maxLength)? longList,
    TResult? Function(T? failedValue, String? reason)? localStorage,
  }) {
    return multilines?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, String? reason)? invalidEmail,
    TResult Function(T? failedValue, int? minLength, String? reason)? shortText,
    TResult Function(T? failedValue, String? reason)? emptyValue,
    TResult Function(T? failedValue)? multilines,
    TResult Function(T? failedValue, int? maxLength)? longText,
    TResult Function(T? failedValue, int? maxLength)? longList,
    TResult Function(T? failedValue, String? reason)? localStorage,
    required TResult orElse(),
  }) {
    if (multilines != null) {
      return multilines(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortText<T> value) shortText,
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(Multilines<T> value) multilines,
    required TResult Function(LongText<T> value) longText,
    required TResult Function(LongList<T> value) longList,
    required TResult Function(LocalStorage<T> value) localStorage,
  }) {
    return multilines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortText<T> value)? shortText,
    TResult? Function(EmptyValue<T> value)? emptyValue,
    TResult? Function(Multilines<T> value)? multilines,
    TResult? Function(LongText<T> value)? longText,
    TResult? Function(LongList<T> value)? longList,
    TResult? Function(LocalStorage<T> value)? localStorage,
  }) {
    return multilines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortText<T> value)? shortText,
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(Multilines<T> value)? multilines,
    TResult Function(LongText<T> value)? longText,
    TResult Function(LongList<T> value)? longList,
    TResult Function(LocalStorage<T> value)? localStorage,
    required TResult orElse(),
  }) {
    if (multilines != null) {
      return multilines(this);
    }
    return orElse();
  }
}

abstract class Multilines<T> implements ValueFailure<T> {
  const factory Multilines({final T? failedValue}) = _$Multilines<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$MultilinesCopyWith<T, _$Multilines<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LongTextCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$LongTextCopyWith(
          _$LongText<T> value, $Res Function(_$LongText<T>) then) =
      __$$LongTextCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue, int? maxLength});
}

/// @nodoc
class __$$LongTextCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$LongText<T>>
    implements _$$LongTextCopyWith<T, $Res> {
  __$$LongTextCopyWithImpl(
      _$LongText<T> _value, $Res Function(_$LongText<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_$LongText<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LongText<T> implements LongText<T> {
  const _$LongText({this.failedValue, this.maxLength});

  @override
  final T? failedValue;
  @override
  final int? maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.longText(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LongText<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), maxLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LongTextCopyWith<T, _$LongText<T>> get copyWith =>
      __$$LongTextCopyWithImpl<T, _$LongText<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, String? reason) invalidEmail,
    required TResult Function(T? failedValue, int? minLength, String? reason)
        shortText,
    required TResult Function(T? failedValue, String? reason) emptyValue,
    required TResult Function(T? failedValue) multilines,
    required TResult Function(T? failedValue, int? maxLength) longText,
    required TResult Function(T? failedValue, int? maxLength) longList,
    required TResult Function(T? failedValue, String? reason) localStorage,
  }) {
    return longText(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, String? reason)? invalidEmail,
    TResult? Function(T? failedValue, int? minLength, String? reason)?
        shortText,
    TResult? Function(T? failedValue, String? reason)? emptyValue,
    TResult? Function(T? failedValue)? multilines,
    TResult? Function(T? failedValue, int? maxLength)? longText,
    TResult? Function(T? failedValue, int? maxLength)? longList,
    TResult? Function(T? failedValue, String? reason)? localStorage,
  }) {
    return longText?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, String? reason)? invalidEmail,
    TResult Function(T? failedValue, int? minLength, String? reason)? shortText,
    TResult Function(T? failedValue, String? reason)? emptyValue,
    TResult Function(T? failedValue)? multilines,
    TResult Function(T? failedValue, int? maxLength)? longText,
    TResult Function(T? failedValue, int? maxLength)? longList,
    TResult Function(T? failedValue, String? reason)? localStorage,
    required TResult orElse(),
  }) {
    if (longText != null) {
      return longText(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortText<T> value) shortText,
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(Multilines<T> value) multilines,
    required TResult Function(LongText<T> value) longText,
    required TResult Function(LongList<T> value) longList,
    required TResult Function(LocalStorage<T> value) localStorage,
  }) {
    return longText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortText<T> value)? shortText,
    TResult? Function(EmptyValue<T> value)? emptyValue,
    TResult? Function(Multilines<T> value)? multilines,
    TResult? Function(LongText<T> value)? longText,
    TResult? Function(LongList<T> value)? longList,
    TResult? Function(LocalStorage<T> value)? localStorage,
  }) {
    return longText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortText<T> value)? shortText,
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(Multilines<T> value)? multilines,
    TResult Function(LongText<T> value)? longText,
    TResult Function(LongList<T> value)? longList,
    TResult Function(LocalStorage<T> value)? localStorage,
    required TResult orElse(),
  }) {
    if (longText != null) {
      return longText(this);
    }
    return orElse();
  }
}

abstract class LongText<T> implements ValueFailure<T> {
  const factory LongText({final T? failedValue, final int? maxLength}) =
      _$LongText<T>;

  @override
  T? get failedValue;
  int? get maxLength;
  @override
  @JsonKey(ignore: true)
  _$$LongTextCopyWith<T, _$LongText<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LongListCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$LongListCopyWith(
          _$LongList<T> value, $Res Function(_$LongList<T>) then) =
      __$$LongListCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue, int? maxLength});
}

/// @nodoc
class __$$LongListCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$LongList<T>>
    implements _$$LongListCopyWith<T, $Res> {
  __$$LongListCopyWithImpl(
      _$LongList<T> _value, $Res Function(_$LongList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_$LongList<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LongList<T> implements LongList<T> {
  const _$LongList({this.failedValue, this.maxLength});

  @override
  final T? failedValue;
  @override
  final int? maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.longList(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LongList<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), maxLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LongListCopyWith<T, _$LongList<T>> get copyWith =>
      __$$LongListCopyWithImpl<T, _$LongList<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, String? reason) invalidEmail,
    required TResult Function(T? failedValue, int? minLength, String? reason)
        shortText,
    required TResult Function(T? failedValue, String? reason) emptyValue,
    required TResult Function(T? failedValue) multilines,
    required TResult Function(T? failedValue, int? maxLength) longText,
    required TResult Function(T? failedValue, int? maxLength) longList,
    required TResult Function(T? failedValue, String? reason) localStorage,
  }) {
    return longList(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, String? reason)? invalidEmail,
    TResult? Function(T? failedValue, int? minLength, String? reason)?
        shortText,
    TResult? Function(T? failedValue, String? reason)? emptyValue,
    TResult? Function(T? failedValue)? multilines,
    TResult? Function(T? failedValue, int? maxLength)? longText,
    TResult? Function(T? failedValue, int? maxLength)? longList,
    TResult? Function(T? failedValue, String? reason)? localStorage,
  }) {
    return longList?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, String? reason)? invalidEmail,
    TResult Function(T? failedValue, int? minLength, String? reason)? shortText,
    TResult Function(T? failedValue, String? reason)? emptyValue,
    TResult Function(T? failedValue)? multilines,
    TResult Function(T? failedValue, int? maxLength)? longText,
    TResult Function(T? failedValue, int? maxLength)? longList,
    TResult Function(T? failedValue, String? reason)? localStorage,
    required TResult orElse(),
  }) {
    if (longList != null) {
      return longList(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortText<T> value) shortText,
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(Multilines<T> value) multilines,
    required TResult Function(LongText<T> value) longText,
    required TResult Function(LongList<T> value) longList,
    required TResult Function(LocalStorage<T> value) localStorage,
  }) {
    return longList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortText<T> value)? shortText,
    TResult? Function(EmptyValue<T> value)? emptyValue,
    TResult? Function(Multilines<T> value)? multilines,
    TResult? Function(LongText<T> value)? longText,
    TResult? Function(LongList<T> value)? longList,
    TResult? Function(LocalStorage<T> value)? localStorage,
  }) {
    return longList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortText<T> value)? shortText,
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(Multilines<T> value)? multilines,
    TResult Function(LongText<T> value)? longText,
    TResult Function(LongList<T> value)? longList,
    TResult Function(LocalStorage<T> value)? localStorage,
    required TResult orElse(),
  }) {
    if (longList != null) {
      return longList(this);
    }
    return orElse();
  }
}

abstract class LongList<T> implements ValueFailure<T> {
  const factory LongList({final T? failedValue, final int? maxLength}) =
      _$LongList<T>;

  @override
  T? get failedValue;
  int? get maxLength;
  @override
  @JsonKey(ignore: true)
  _$$LongListCopyWith<T, _$LongList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalStorageCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$LocalStorageCopyWith(
          _$LocalStorage<T> value, $Res Function(_$LocalStorage<T>) then) =
      __$$LocalStorageCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue, String? reason});
}

/// @nodoc
class __$$LocalStorageCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$LocalStorage<T>>
    implements _$$LocalStorageCopyWith<T, $Res> {
  __$$LocalStorageCopyWithImpl(
      _$LocalStorage<T> _value, $Res Function(_$LocalStorage<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$LocalStorage<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocalStorage<T> implements LocalStorage<T> {
  const _$LocalStorage({this.failedValue, this.reason});

  @override
  final T? failedValue;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ValueFailure<$T>.localStorage(failedValue: $failedValue, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalStorage<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalStorageCopyWith<T, _$LocalStorage<T>> get copyWith =>
      __$$LocalStorageCopyWithImpl<T, _$LocalStorage<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, String? reason) invalidEmail,
    required TResult Function(T? failedValue, int? minLength, String? reason)
        shortText,
    required TResult Function(T? failedValue, String? reason) emptyValue,
    required TResult Function(T? failedValue) multilines,
    required TResult Function(T? failedValue, int? maxLength) longText,
    required TResult Function(T? failedValue, int? maxLength) longList,
    required TResult Function(T? failedValue, String? reason) localStorage,
  }) {
    return localStorage(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, String? reason)? invalidEmail,
    TResult? Function(T? failedValue, int? minLength, String? reason)?
        shortText,
    TResult? Function(T? failedValue, String? reason)? emptyValue,
    TResult? Function(T? failedValue)? multilines,
    TResult? Function(T? failedValue, int? maxLength)? longText,
    TResult? Function(T? failedValue, int? maxLength)? longList,
    TResult? Function(T? failedValue, String? reason)? localStorage,
  }) {
    return localStorage?.call(failedValue, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, String? reason)? invalidEmail,
    TResult Function(T? failedValue, int? minLength, String? reason)? shortText,
    TResult Function(T? failedValue, String? reason)? emptyValue,
    TResult Function(T? failedValue)? multilines,
    TResult Function(T? failedValue, int? maxLength)? longText,
    TResult Function(T? failedValue, int? maxLength)? longList,
    TResult Function(T? failedValue, String? reason)? localStorage,
    required TResult orElse(),
  }) {
    if (localStorage != null) {
      return localStorage(failedValue, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortText<T> value) shortText,
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(Multilines<T> value) multilines,
    required TResult Function(LongText<T> value) longText,
    required TResult Function(LongList<T> value) longList,
    required TResult Function(LocalStorage<T> value) localStorage,
  }) {
    return localStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortText<T> value)? shortText,
    TResult? Function(EmptyValue<T> value)? emptyValue,
    TResult? Function(Multilines<T> value)? multilines,
    TResult? Function(LongText<T> value)? longText,
    TResult? Function(LongList<T> value)? longList,
    TResult? Function(LocalStorage<T> value)? localStorage,
  }) {
    return localStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortText<T> value)? shortText,
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(Multilines<T> value)? multilines,
    TResult Function(LongText<T> value)? longText,
    TResult Function(LongList<T> value)? longList,
    TResult Function(LocalStorage<T> value)? localStorage,
    required TResult orElse(),
  }) {
    if (localStorage != null) {
      return localStorage(this);
    }
    return orElse();
  }
}

abstract class LocalStorage<T> implements ValueFailure<T> {
  const factory LocalStorage({final T? failedValue, final String? reason}) =
      _$LocalStorage<T>;

  @override
  T? get failedValue;
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$LocalStorageCopyWith<T, _$LocalStorage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClientFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Storage<T> value) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Storage<T> value)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Storage<T> value)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientFailureCopyWith<T, $Res> {
  factory $ClientFailureCopyWith(
          ClientFailure<T> value, $Res Function(ClientFailure<T>) then) =
      _$ClientFailureCopyWithImpl<T, $Res, ClientFailure<T>>;
}

/// @nodoc
class _$ClientFailureCopyWithImpl<T, $Res, $Val extends ClientFailure<T>>
    implements $ClientFailureCopyWith<T, $Res> {
  _$ClientFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StorageCopyWith<T, $Res> {
  factory _$$StorageCopyWith(
          _$Storage<T> value, $Res Function(_$Storage<T>) then) =
      __$$StorageCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StorageCopyWithImpl<T, $Res>
    extends _$ClientFailureCopyWithImpl<T, $Res, _$Storage<T>>
    implements _$$StorageCopyWith<T, $Res> {
  __$$StorageCopyWithImpl(
      _$Storage<T> _value, $Res Function(_$Storage<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Storage<T> implements Storage<T> {
  const _$Storage();

  @override
  String toString() {
    return 'ClientFailure<$T>.storage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Storage<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storage,
  }) {
    return storage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storage,
  }) {
    return storage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Storage<T> value) storage,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Storage<T> value)? storage,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Storage<T> value)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class Storage<T> implements ClientFailure<T> {
  const factory Storage() = _$Storage<T>;
}
