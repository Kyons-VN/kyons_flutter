// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BalanceDto _$BalanceDtoFromJson(Map<String, dynamic> json) {
  return _BalanceDto.fromJson(json);
}

/// @nodoc
mixin _$BalanceDto {
  @JsonKey(name: 'balance')
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceDtoCopyWith<BalanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceDtoCopyWith<$Res> {
  factory $BalanceDtoCopyWith(
          BalanceDto value, $Res Function(BalanceDto) then) =
      _$BalanceDtoCopyWithImpl<$Res, BalanceDto>;
  @useResult
  $Res call({@JsonKey(name: 'balance') int value});
}

/// @nodoc
class _$BalanceDtoCopyWithImpl<$Res, $Val extends BalanceDto>
    implements $BalanceDtoCopyWith<$Res> {
  _$BalanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BalanceDtoCopyWith<$Res>
    implements $BalanceDtoCopyWith<$Res> {
  factory _$$_BalanceDtoCopyWith(
          _$_BalanceDto value, $Res Function(_$_BalanceDto) then) =
      __$$_BalanceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'balance') int value});
}

/// @nodoc
class __$$_BalanceDtoCopyWithImpl<$Res>
    extends _$BalanceDtoCopyWithImpl<$Res, _$_BalanceDto>
    implements _$$_BalanceDtoCopyWith<$Res> {
  __$$_BalanceDtoCopyWithImpl(
      _$_BalanceDto _value, $Res Function(_$_BalanceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_BalanceDto(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BalanceDto extends _BalanceDto {
  const _$_BalanceDto({@JsonKey(name: 'balance') required this.value})
      : super._();

  factory _$_BalanceDto.fromJson(Map<String, dynamic> json) =>
      _$$_BalanceDtoFromJson(json);

  @override
  @JsonKey(name: 'balance')
  final int value;

  @override
  String toString() {
    return 'BalanceDto(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalanceDto &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalanceDtoCopyWith<_$_BalanceDto> get copyWith =>
      __$$_BalanceDtoCopyWithImpl<_$_BalanceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BalanceDtoToJson(
      this,
    );
  }
}

abstract class _BalanceDto extends BalanceDto {
  const factory _BalanceDto(
      {@JsonKey(name: 'balance') required final int value}) = _$_BalanceDto;
  const _BalanceDto._() : super._();

  factory _BalanceDto.fromJson(Map<String, dynamic> json) =
      _$_BalanceDto.fromJson;

  @override
  @JsonKey(name: 'balance')
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_BalanceDtoCopyWith<_$_BalanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
