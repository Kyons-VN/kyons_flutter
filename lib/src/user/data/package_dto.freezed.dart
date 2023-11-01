// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageDto _$PackageDtoFromJson(Map<String, dynamic> json) {
  return _PackageDto.fromJson(json);
}

/// @nodoc
mixin _$PackageDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DiscountDto get discount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 99)
  int get limit => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'sale_price')
  String get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_items')
  List<PackageItemDto> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageDtoCopyWith<PackageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageDtoCopyWith<$Res> {
  factory $PackageDtoCopyWith(
          PackageDto value, $Res Function(PackageDto) then) =
      _$PackageDtoCopyWithImpl<$Res, PackageDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DiscountDto discount,
      @JsonKey(defaultValue: 99) int limit,
      String price,
      @JsonKey(name: 'sale_price') String salePrice,
      @JsonKey(name: 'package_items') List<PackageItemDto> items});

  $DiscountDtoCopyWith<$Res> get discount;
}

/// @nodoc
class _$PackageDtoCopyWithImpl<$Res, $Val extends PackageDto>
    implements $PackageDtoCopyWith<$Res> {
  _$PackageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? discount = null,
    Object? limit = null,
    Object? price = null,
    Object? salePrice = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountDto,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PackageItemDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountDtoCopyWith<$Res> get discount {
    return $DiscountDtoCopyWith<$Res>(_value.discount, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageDtoImplCopyWith<$Res>
    implements $PackageDtoCopyWith<$Res> {
  factory _$$PackageDtoImplCopyWith(
          _$PackageDtoImpl value, $Res Function(_$PackageDtoImpl) then) =
      __$$PackageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      DiscountDto discount,
      @JsonKey(defaultValue: 99) int limit,
      String price,
      @JsonKey(name: 'sale_price') String salePrice,
      @JsonKey(name: 'package_items') List<PackageItemDto> items});

  @override
  $DiscountDtoCopyWith<$Res> get discount;
}

/// @nodoc
class __$$PackageDtoImplCopyWithImpl<$Res>
    extends _$PackageDtoCopyWithImpl<$Res, _$PackageDtoImpl>
    implements _$$PackageDtoImplCopyWith<$Res> {
  __$$PackageDtoImplCopyWithImpl(
      _$PackageDtoImpl _value, $Res Function(_$PackageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? discount = null,
    Object? limit = null,
    Object? price = null,
    Object? salePrice = null,
    Object? items = null,
  }) {
    return _then(_$PackageDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountDto,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PackageItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageDtoImpl extends _PackageDto {
  const _$PackageDtoImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.discount,
      @JsonKey(defaultValue: 99) required this.limit,
      required this.price,
      @JsonKey(name: 'sale_price') required this.salePrice,
      @JsonKey(name: 'package_items')
      required final List<PackageItemDto> items})
      : _items = items,
        super._();

  factory _$PackageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final DiscountDto discount;
  @override
  @JsonKey(defaultValue: 99)
  final int limit;
  @override
  final String price;
  @override
  @JsonKey(name: 'sale_price')
  final String salePrice;
  final List<PackageItemDto> _items;
  @override
  @JsonKey(name: 'package_items')
  List<PackageItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PackageDto(id: $id, name: $name, description: $description, discount: $discount, limit: $limit, price: $price, salePrice: $salePrice, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, discount,
      limit, price, salePrice, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageDtoImplCopyWith<_$PackageDtoImpl> get copyWith =>
      __$$PackageDtoImplCopyWithImpl<_$PackageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageDtoImplToJson(
      this,
    );
  }
}

abstract class _PackageDto extends PackageDto {
  const factory _PackageDto(
      {required final int id,
      required final String name,
      required final String description,
      required final DiscountDto discount,
      @JsonKey(defaultValue: 99) required final int limit,
      required final String price,
      @JsonKey(name: 'sale_price') required final String salePrice,
      @JsonKey(name: 'package_items')
      required final List<PackageItemDto> items}) = _$PackageDtoImpl;
  const _PackageDto._() : super._();

  factory _PackageDto.fromJson(Map<String, dynamic> json) =
      _$PackageDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  DiscountDto get discount;
  @override
  @JsonKey(defaultValue: 99)
  int get limit;
  @override
  String get price;
  @override
  @JsonKey(name: 'sale_price')
  String get salePrice;
  @override
  @JsonKey(name: 'package_items')
  List<PackageItemDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$PackageDtoImplCopyWith<_$PackageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountDto _$DiscountDtoFromJson(Map<String, dynamic> json) {
  return _DiscountDto.fromJson(json);
}

/// @nodoc
mixin _$DiscountDto {
  @JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
  @JsonEnum(fieldRename: FieldRename.snake)
  DiscountType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount', defaultValue: '0.0')
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountDtoCopyWith<DiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountDtoCopyWith<$Res> {
  factory $DiscountDtoCopyWith(
          DiscountDto value, $Res Function(DiscountDto) then) =
      _$DiscountDtoCopyWithImpl<$Res, DiscountDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
      @JsonEnum(fieldRename: FieldRename.snake)
      DiscountType type,
      @JsonKey(name: 'discount_amount', defaultValue: '0.0') String amount});
}

/// @nodoc
class _$DiscountDtoCopyWithImpl<$Res, $Val extends DiscountDto>
    implements $DiscountDtoCopyWith<$Res> {
  _$DiscountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountDtoImplCopyWith<$Res>
    implements $DiscountDtoCopyWith<$Res> {
  factory _$$DiscountDtoImplCopyWith(
          _$DiscountDtoImpl value, $Res Function(_$DiscountDtoImpl) then) =
      __$$DiscountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
      @JsonEnum(fieldRename: FieldRename.snake)
      DiscountType type,
      @JsonKey(name: 'discount_amount', defaultValue: '0.0') String amount});
}

/// @nodoc
class __$$DiscountDtoImplCopyWithImpl<$Res>
    extends _$DiscountDtoCopyWithImpl<$Res, _$DiscountDtoImpl>
    implements _$$DiscountDtoImplCopyWith<$Res> {
  __$$DiscountDtoImplCopyWithImpl(
      _$DiscountDtoImpl _value, $Res Function(_$DiscountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_$DiscountDtoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountDtoImpl extends _DiscountDto {
  const _$DiscountDtoImpl(
      {@JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
      @JsonEnum(fieldRename: FieldRename.snake)
      required this.type,
      @JsonKey(name: 'discount_amount', defaultValue: '0.0')
      required this.amount})
      : super._();

  factory _$DiscountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountDtoImplFromJson(json);

  @override
  @JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
  @JsonEnum(fieldRename: FieldRename.snake)
  final DiscountType type;
  @override
  @JsonKey(name: 'discount_amount', defaultValue: '0.0')
  final String amount;

  @override
  String toString() {
    return 'DiscountDto(type: $type, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountDtoImplCopyWith<_$DiscountDtoImpl> get copyWith =>
      __$$DiscountDtoImplCopyWithImpl<_$DiscountDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountDtoImplToJson(
      this,
    );
  }
}

abstract class _DiscountDto extends DiscountDto {
  const factory _DiscountDto(
      {@JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
      @JsonEnum(fieldRename: FieldRename.snake)
      required final DiscountType type,
      @JsonKey(name: 'discount_amount', defaultValue: '0.0')
      required final String amount}) = _$DiscountDtoImpl;
  const _DiscountDto._() : super._();

  factory _DiscountDto.fromJson(Map<String, dynamic> json) =
      _$DiscountDtoImpl.fromJson;

  @override
  @JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
  @JsonEnum(fieldRename: FieldRename.snake)
  DiscountType get type;
  @override
  @JsonKey(name: 'discount_amount', defaultValue: '0.0')
  String get amount;
  @override
  @JsonKey(ignore: true)
  _$$DiscountDtoImplCopyWith<_$DiscountDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageItemDto _$PackageItemDtoFromJson(Map<String, dynamic> json) {
  return _PackageItemDto.fromJson(json);
}

/// @nodoc
mixin _$PackageItemDto {
  int get id => throw _privateConstructorUsedError;
  PackageServiceDto get service => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageItemDtoCopyWith<PackageItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageItemDtoCopyWith<$Res> {
  factory $PackageItemDtoCopyWith(
          PackageItemDto value, $Res Function(PackageItemDto) then) =
      _$PackageItemDtoCopyWithImpl<$Res, PackageItemDto>;
  @useResult
  $Res call({int id, PackageServiceDto service});

  $PackageServiceDtoCopyWith<$Res> get service;
}

/// @nodoc
class _$PackageItemDtoCopyWithImpl<$Res, $Val extends PackageItemDto>
    implements $PackageItemDtoCopyWith<$Res> {
  _$PackageItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? service = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as PackageServiceDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageServiceDtoCopyWith<$Res> get service {
    return $PackageServiceDtoCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageItemDtoImplCopyWith<$Res>
    implements $PackageItemDtoCopyWith<$Res> {
  factory _$$PackageItemDtoImplCopyWith(_$PackageItemDtoImpl value,
          $Res Function(_$PackageItemDtoImpl) then) =
      __$$PackageItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, PackageServiceDto service});

  @override
  $PackageServiceDtoCopyWith<$Res> get service;
}

/// @nodoc
class __$$PackageItemDtoImplCopyWithImpl<$Res>
    extends _$PackageItemDtoCopyWithImpl<$Res, _$PackageItemDtoImpl>
    implements _$$PackageItemDtoImplCopyWith<$Res> {
  __$$PackageItemDtoImplCopyWithImpl(
      _$PackageItemDtoImpl _value, $Res Function(_$PackageItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? service = null,
  }) {
    return _then(_$PackageItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as PackageServiceDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageItemDtoImpl extends _PackageItemDto {
  const _$PackageItemDtoImpl({required this.id, required this.service})
      : super._();

  factory _$PackageItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageItemDtoImplFromJson(json);

  @override
  final int id;
  @override
  final PackageServiceDto service;

  @override
  String toString() {
    return 'PackageItemDto(id: $id, service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.service, service) || other.service == service));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageItemDtoImplCopyWith<_$PackageItemDtoImpl> get copyWith =>
      __$$PackageItemDtoImplCopyWithImpl<_$PackageItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageItemDtoImplToJson(
      this,
    );
  }
}

abstract class _PackageItemDto extends PackageItemDto {
  const factory _PackageItemDto(
      {required final int id,
      required final PackageServiceDto service}) = _$PackageItemDtoImpl;
  const _PackageItemDto._() : super._();

  factory _PackageItemDto.fromJson(Map<String, dynamic> json) =
      _$PackageItemDtoImpl.fromJson;

  @override
  int get id;
  @override
  PackageServiceDto get service;
  @override
  @JsonKey(ignore: true)
  _$$PackageItemDtoImplCopyWith<_$PackageItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageServiceDto _$PackageServiceDtoFromJson(Map<String, dynamic> json) {
  return _PackageServiceDto.fromJson(json);
}

/// @nodoc
mixin _$PackageServiceDto {
  @JsonKey(name: 'service_type_text')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_type')
  @JsonEnum(fieldRename: FieldRename.snake)
  PackageServiceType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_amount')
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageServiceDtoCopyWith<PackageServiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageServiceDtoCopyWith<$Res> {
  factory $PackageServiceDtoCopyWith(
          PackageServiceDto value, $Res Function(PackageServiceDto) then) =
      _$PackageServiceDtoCopyWithImpl<$Res, PackageServiceDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'service_type_text') String name,
      @JsonKey(name: 'service_type')
      @JsonEnum(fieldRename: FieldRename.snake)
      PackageServiceType type,
      @JsonKey(name: 'service_amount') int amount});
}

/// @nodoc
class _$PackageServiceDtoCopyWithImpl<$Res, $Val extends PackageServiceDto>
    implements $PackageServiceDtoCopyWith<$Res> {
  _$PackageServiceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PackageServiceType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageServiceDtoImplCopyWith<$Res>
    implements $PackageServiceDtoCopyWith<$Res> {
  factory _$$PackageServiceDtoImplCopyWith(_$PackageServiceDtoImpl value,
          $Res Function(_$PackageServiceDtoImpl) then) =
      __$$PackageServiceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'service_type_text') String name,
      @JsonKey(name: 'service_type')
      @JsonEnum(fieldRename: FieldRename.snake)
      PackageServiceType type,
      @JsonKey(name: 'service_amount') int amount});
}

/// @nodoc
class __$$PackageServiceDtoImplCopyWithImpl<$Res>
    extends _$PackageServiceDtoCopyWithImpl<$Res, _$PackageServiceDtoImpl>
    implements _$$PackageServiceDtoImplCopyWith<$Res> {
  __$$PackageServiceDtoImplCopyWithImpl(_$PackageServiceDtoImpl _value,
      $Res Function(_$PackageServiceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_$PackageServiceDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PackageServiceType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageServiceDtoImpl extends _PackageServiceDto {
  const _$PackageServiceDtoImpl(
      {@JsonKey(name: 'service_type_text') required this.name,
      @JsonKey(name: 'service_type')
      @JsonEnum(fieldRename: FieldRename.snake)
      required this.type,
      @JsonKey(name: 'service_amount') required this.amount})
      : super._();

  factory _$PackageServiceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageServiceDtoImplFromJson(json);

  @override
  @JsonKey(name: 'service_type_text')
  final String name;
  @override
  @JsonKey(name: 'service_type')
  @JsonEnum(fieldRename: FieldRename.snake)
  final PackageServiceType type;
  @override
  @JsonKey(name: 'service_amount')
  final int amount;

  @override
  String toString() {
    return 'PackageServiceDto(name: $name, type: $type, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageServiceDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageServiceDtoImplCopyWith<_$PackageServiceDtoImpl> get copyWith =>
      __$$PackageServiceDtoImplCopyWithImpl<_$PackageServiceDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageServiceDtoImplToJson(
      this,
    );
  }
}

abstract class _PackageServiceDto extends PackageServiceDto {
  const factory _PackageServiceDto(
          {@JsonKey(name: 'service_type_text') required final String name,
          @JsonKey(name: 'service_type')
          @JsonEnum(fieldRename: FieldRename.snake)
          required final PackageServiceType type,
          @JsonKey(name: 'service_amount') required final int amount}) =
      _$PackageServiceDtoImpl;
  const _PackageServiceDto._() : super._();

  factory _PackageServiceDto.fromJson(Map<String, dynamic> json) =
      _$PackageServiceDtoImpl.fromJson;

  @override
  @JsonKey(name: 'service_type_text')
  String get name;
  @override
  @JsonKey(name: 'service_type')
  @JsonEnum(fieldRename: FieldRename.snake)
  PackageServiceType get type;
  @override
  @JsonKey(name: 'service_amount')
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$PackageServiceDtoImplCopyWith<_$PackageServiceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
