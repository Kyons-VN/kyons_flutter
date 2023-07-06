// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PackagesState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<List<Package>> get packages => throw _privateConstructorUsedError;
  Option<Balance> get balance => throw _privateConstructorUsedError;
  Option<ApiFailure> get error => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  Option<int> get quantity => throw _privateConstructorUsedError;
  Option<Package> get orderedPackage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackagesStateCopyWith<PackagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesStateCopyWith<$Res> {
  factory $PackagesStateCopyWith(
          PackagesState value, $Res Function(PackagesState) then) =
      _$PackagesStateCopyWithImpl<$Res, PackagesState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<List<Package>> packages,
      Option<Balance> balance,
      Option<ApiFailure> error,
      bool isDone,
      bool showError,
      Option<int> quantity,
      Option<Package> orderedPackage});
}

/// @nodoc
class _$PackagesStateCopyWithImpl<$Res, $Val extends PackagesState>
    implements $PackagesStateCopyWith<$Res> {
  _$PackagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? packages = null,
    Object? balance = null,
    Object? error = null,
    Object? isDone = null,
    Object? showError = null,
    Object? quantity = null,
    Object? orderedPackage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as Option<List<Package>>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Option<Balance>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      orderedPackage: null == orderedPackage
          ? _value.orderedPackage
          : orderedPackage // ignore: cast_nullable_to_non_nullable
              as Option<Package>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackagesStateCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory _$$_PackagesStateCopyWith(
          _$_PackagesState value, $Res Function(_$_PackagesState) then) =
      __$$_PackagesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<List<Package>> packages,
      Option<Balance> balance,
      Option<ApiFailure> error,
      bool isDone,
      bool showError,
      Option<int> quantity,
      Option<Package> orderedPackage});
}

/// @nodoc
class __$$_PackagesStateCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res, _$_PackagesState>
    implements _$$_PackagesStateCopyWith<$Res> {
  __$$_PackagesStateCopyWithImpl(
      _$_PackagesState _value, $Res Function(_$_PackagesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? packages = null,
    Object? balance = null,
    Object? error = null,
    Object? isDone = null,
    Object? showError = null,
    Object? quantity = null,
    Object? orderedPackage = null,
  }) {
    return _then(_$_PackagesState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as Option<List<Package>>,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Option<Balance>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      orderedPackage: null == orderedPackage
          ? _value.orderedPackage
          : orderedPackage // ignore: cast_nullable_to_non_nullable
              as Option<Package>,
    ));
  }
}

/// @nodoc

class _$_PackagesState implements _PackagesState {
  const _$_PackagesState(
      {required this.isLoading,
      required this.packages,
      required this.balance,
      required this.error,
      required this.isDone,
      required this.showError,
      required this.quantity,
      required this.orderedPackage});

  @override
  final bool isLoading;
  @override
  final Option<List<Package>> packages;
  @override
  final Option<Balance> balance;
  @override
  final Option<ApiFailure> error;
  @override
  final bool isDone;
  @override
  final bool showError;
  @override
  final Option<int> quantity;
  @override
  final Option<Package> orderedPackage;

  @override
  String toString() {
    return 'PackagesState(isLoading: $isLoading, packages: $packages, balance: $balance, error: $error, isDone: $isDone, showError: $showError, quantity: $quantity, orderedPackage: $orderedPackage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackagesState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.packages, packages) ||
                other.packages == packages) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.orderedPackage, orderedPackage) ||
                other.orderedPackage == orderedPackage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, packages, balance,
      error, isDone, showError, quantity, orderedPackage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackagesStateCopyWith<_$_PackagesState> get copyWith =>
      __$$_PackagesStateCopyWithImpl<_$_PackagesState>(this, _$identity);
}

abstract class _PackagesState implements PackagesState {
  const factory _PackagesState(
      {required final bool isLoading,
      required final Option<List<Package>> packages,
      required final Option<Balance> balance,
      required final Option<ApiFailure> error,
      required final bool isDone,
      required final bool showError,
      required final Option<int> quantity,
      required final Option<Package> orderedPackage}) = _$_PackagesState;

  @override
  bool get isLoading;
  @override
  Option<List<Package>> get packages;
  @override
  Option<Balance> get balance;
  @override
  Option<ApiFailure> get error;
  @override
  bool get isDone;
  @override
  bool get showError;
  @override
  Option<int> get quantity;
  @override
  Option<Package> get orderedPackage;
  @override
  @JsonKey(ignore: true)
  _$$_PackagesStateCopyWith<_$_PackagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
