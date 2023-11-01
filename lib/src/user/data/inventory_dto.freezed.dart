// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventoryDto _$InventoryDtoFromJson(Map<String, dynamic> json) {
  return _InventoryDto.fromJson(json);
}

/// @nodoc
mixin _$InventoryDto {
  @JsonKey(name: 'mock_test')
  int get mockTest => throw _privateConstructorUsedError;
  double get subscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryDtoCopyWith<InventoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryDtoCopyWith<$Res> {
  factory $InventoryDtoCopyWith(
          InventoryDto value, $Res Function(InventoryDto) then) =
      _$InventoryDtoCopyWithImpl<$Res, InventoryDto>;
  @useResult
  $Res call({@JsonKey(name: 'mock_test') int mockTest, double subscription});
}

/// @nodoc
class _$InventoryDtoCopyWithImpl<$Res, $Val extends InventoryDto>
    implements $InventoryDtoCopyWith<$Res> {
  _$InventoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mockTest = null,
    Object? subscription = null,
  }) {
    return _then(_value.copyWith(
      mockTest: null == mockTest
          ? _value.mockTest
          : mockTest // ignore: cast_nullable_to_non_nullable
              as int,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryDtoImplCopyWith<$Res>
    implements $InventoryDtoCopyWith<$Res> {
  factory _$$InventoryDtoImplCopyWith(
          _$InventoryDtoImpl value, $Res Function(_$InventoryDtoImpl) then) =
      __$$InventoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mock_test') int mockTest, double subscription});
}

/// @nodoc
class __$$InventoryDtoImplCopyWithImpl<$Res>
    extends _$InventoryDtoCopyWithImpl<$Res, _$InventoryDtoImpl>
    implements _$$InventoryDtoImplCopyWith<$Res> {
  __$$InventoryDtoImplCopyWithImpl(
      _$InventoryDtoImpl _value, $Res Function(_$InventoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mockTest = null,
    Object? subscription = null,
  }) {
    return _then(_$InventoryDtoImpl(
      mockTest: null == mockTest
          ? _value.mockTest
          : mockTest // ignore: cast_nullable_to_non_nullable
              as int,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryDtoImpl extends _InventoryDto {
  const _$InventoryDtoImpl(
      {@JsonKey(name: 'mock_test') required this.mockTest,
      required this.subscription})
      : super._();

  factory _$InventoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryDtoImplFromJson(json);

  @override
  @JsonKey(name: 'mock_test')
  final int mockTest;
  @override
  final double subscription;

  @override
  String toString() {
    return 'InventoryDto(mockTest: $mockTest, subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryDtoImpl &&
            (identical(other.mockTest, mockTest) ||
                other.mockTest == mockTest) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mockTest, subscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryDtoImplCopyWith<_$InventoryDtoImpl> get copyWith =>
      __$$InventoryDtoImplCopyWithImpl<_$InventoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryDtoImplToJson(
      this,
    );
  }
}

abstract class _InventoryDto extends InventoryDto {
  const factory _InventoryDto(
      {@JsonKey(name: 'mock_test') required final int mockTest,
      required final double subscription}) = _$InventoryDtoImpl;
  const _InventoryDto._() : super._();

  factory _InventoryDto.fromJson(Map<String, dynamic> json) =
      _$InventoryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'mock_test')
  int get mockTest;
  @override
  double get subscription;
  @override
  @JsonKey(ignore: true)
  _$$InventoryDtoImplCopyWith<_$InventoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
