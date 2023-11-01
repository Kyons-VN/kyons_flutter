// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SummaryState {
  Inventory get inventory => throw _privateConstructorUsedError;
  Balance get balance => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<ApiFailure> get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryStateCopyWith<SummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res, SummaryState>;
  @useResult
  $Res call(
      {Inventory inventory,
      Balance balance,
      bool isLoading,
      Option<ApiFailure> error});
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res, $Val extends SummaryState>
    implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventory = null,
    Object? balance = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SummaryStateImplCopyWith<$Res>
    implements $SummaryStateCopyWith<$Res> {
  factory _$$SummaryStateImplCopyWith(
          _$SummaryStateImpl value, $Res Function(_$SummaryStateImpl) then) =
      __$$SummaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Inventory inventory,
      Balance balance,
      bool isLoading,
      Option<ApiFailure> error});
}

/// @nodoc
class __$$SummaryStateImplCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$SummaryStateImpl>
    implements _$$SummaryStateImplCopyWith<$Res> {
  __$$SummaryStateImplCopyWithImpl(
      _$SummaryStateImpl _value, $Res Function(_$SummaryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventory = null,
    Object? balance = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_$SummaryStateImpl(
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
    ));
  }
}

/// @nodoc

class _$SummaryStateImpl implements _SummaryState {
  const _$SummaryStateImpl(
      {required this.inventory,
      required this.balance,
      required this.isLoading,
      required this.error});

  @override
  final Inventory inventory;
  @override
  final Balance balance;
  @override
  final bool isLoading;
  @override
  final Option<ApiFailure> error;

  @override
  String toString() {
    return 'SummaryState(inventory: $inventory, balance: $balance, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryStateImpl &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, inventory, balance, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryStateImplCopyWith<_$SummaryStateImpl> get copyWith =>
      __$$SummaryStateImplCopyWithImpl<_$SummaryStateImpl>(this, _$identity);
}

abstract class _SummaryState implements SummaryState {
  const factory _SummaryState(
      {required final Inventory inventory,
      required final Balance balance,
      required final bool isLoading,
      required final Option<ApiFailure> error}) = _$SummaryStateImpl;

  @override
  Inventory get inventory;
  @override
  Balance get balance;
  @override
  bool get isLoading;
  @override
  Option<ApiFailure> get error;
  @override
  @JsonKey(ignore: true)
  _$$SummaryStateImplCopyWith<_$SummaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
