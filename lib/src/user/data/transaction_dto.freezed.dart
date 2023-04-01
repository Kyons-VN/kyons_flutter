// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) {
  return _TransactionDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_name')
  String get packageName => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDtoCopyWith<TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDtoCopyWith<$Res> {
  factory $TransactionDtoCopyWith(
          TransactionDto value, $Res Function(TransactionDto) then) =
      _$TransactionDtoCopyWithImpl<$Res, TransactionDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'package_name') String packageName,
      int quantity,
      @JsonKey(name: 'created_at') DateTime createdAt,
      double amount});
}

/// @nodoc
class _$TransactionDtoCopyWithImpl<$Res, $Val extends TransactionDto>
    implements $TransactionDtoCopyWith<$Res> {
  _$TransactionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageName = null,
    Object? quantity = null,
    Object? createdAt = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionDtoCopyWith<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  factory _$$_TransactionDtoCopyWith(
          _$_TransactionDto value, $Res Function(_$_TransactionDto) then) =
      __$$_TransactionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'package_name') String packageName,
      int quantity,
      @JsonKey(name: 'created_at') DateTime createdAt,
      double amount});
}

/// @nodoc
class __$$_TransactionDtoCopyWithImpl<$Res>
    extends _$TransactionDtoCopyWithImpl<$Res, _$_TransactionDto>
    implements _$$_TransactionDtoCopyWith<$Res> {
  __$$_TransactionDtoCopyWithImpl(
      _$_TransactionDto _value, $Res Function(_$_TransactionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? packageName = null,
    Object? quantity = null,
    Object? createdAt = null,
    Object? amount = null,
  }) {
    return _then(_$_TransactionDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDto extends _TransactionDto {
  const _$_TransactionDto(
      {required this.id,
      @JsonKey(name: 'package_name') required this.packageName,
      required this.quantity,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.amount})
      : super._();

  factory _$_TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'package_name')
  final String packageName;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final double amount;

  @override
  String toString() {
    return 'TransactionDto(id: $id, packageName: $packageName, quantity: $quantity, createdAt: $createdAt, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, packageName, quantity, createdAt, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionDtoCopyWith<_$_TransactionDto> get copyWith =>
      __$$_TransactionDtoCopyWithImpl<_$_TransactionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDtoToJson(
      this,
    );
  }
}

abstract class _TransactionDto extends TransactionDto {
  const factory _TransactionDto(
      {required final String id,
      @JsonKey(name: 'package_name') required final String packageName,
      required final int quantity,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final double amount}) = _$_TransactionDto;
  const _TransactionDto._() : super._();

  factory _TransactionDto.fromJson(Map<String, dynamic> json) =
      _$_TransactionDto.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'package_name')
  String get packageName;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDtoCopyWith<_$_TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
