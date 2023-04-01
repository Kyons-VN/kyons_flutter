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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Map<String, dynamic> get discount => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get salePrice => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get items => throw _privateConstructorUsedError;

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
      {String id,
      String name,
      String description,
      Map<String, dynamic> discount,
      int limit,
      int price,
      int salePrice,
      List<Map<String, dynamic>> items});
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
              as String,
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
              as Map<String, dynamic>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackageDtoCopyWith<$Res>
    implements $PackageDtoCopyWith<$Res> {
  factory _$$_PackageDtoCopyWith(
          _$_PackageDto value, $Res Function(_$_PackageDto) then) =
      __$$_PackageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      Map<String, dynamic> discount,
      int limit,
      int price,
      int salePrice,
      List<Map<String, dynamic>> items});
}

/// @nodoc
class __$$_PackageDtoCopyWithImpl<$Res>
    extends _$PackageDtoCopyWithImpl<$Res, _$_PackageDto>
    implements _$$_PackageDtoCopyWith<$Res> {
  __$$_PackageDtoCopyWithImpl(
      _$_PackageDto _value, $Res Function(_$_PackageDto) _then)
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
    return _then(_$_PackageDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value._discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageDto extends _PackageDto {
  const _$_PackageDto(
      {required this.id,
      required this.name,
      required this.description,
      required final Map<String, dynamic> discount,
      required this.limit,
      required this.price,
      required this.salePrice,
      required final List<Map<String, dynamic>> items})
      : _discount = discount,
        _items = items,
        super._();

  factory _$_PackageDto.fromJson(Map<String, dynamic> json) =>
      _$$_PackageDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final Map<String, dynamic> _discount;
  @override
  Map<String, dynamic> get discount {
    if (_discount is EqualUnmodifiableMapView) return _discount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_discount);
  }

  @override
  final int limit;
  @override
  final int price;
  @override
  final int salePrice;
  final List<Map<String, dynamic>> _items;
  @override
  List<Map<String, dynamic>> get items {
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
            other is _$_PackageDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._discount, _discount) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_discount),
      limit,
      price,
      salePrice,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageDtoCopyWith<_$_PackageDto> get copyWith =>
      __$$_PackageDtoCopyWithImpl<_$_PackageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageDtoToJson(
      this,
    );
  }
}

abstract class _PackageDto extends PackageDto {
  const factory _PackageDto(
      {required final String id,
      required final String name,
      required final String description,
      required final Map<String, dynamic> discount,
      required final int limit,
      required final int price,
      required final int salePrice,
      required final List<Map<String, dynamic>> items}) = _$_PackageDto;
  const _PackageDto._() : super._();

  factory _PackageDto.fromJson(Map<String, dynamic> json) =
      _$_PackageDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  Map<String, dynamic> get discount;
  @override
  int get limit;
  @override
  int get price;
  @override
  int get salePrice;
  @override
  List<Map<String, dynamic>> get items;
  @override
  @JsonKey(ignore: true)
  _$$_PackageDtoCopyWith<_$_PackageDto> get copyWith =>
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
  @JsonKey(name: 'discount_amount')
  int get amount => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'discount_amount')
          int amount});
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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscountDtoCopyWith<$Res>
    implements $DiscountDtoCopyWith<$Res> {
  factory _$$_DiscountDtoCopyWith(
          _$_DiscountDto value, $Res Function(_$_DiscountDto) then) =
      __$$_DiscountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
      @JsonEnum(fieldRename: FieldRename.snake)
          DiscountType type,
      @JsonKey(name: 'discount_amount')
          int amount});
}

/// @nodoc
class __$$_DiscountDtoCopyWithImpl<$Res>
    extends _$DiscountDtoCopyWithImpl<$Res, _$_DiscountDto>
    implements _$$_DiscountDtoCopyWith<$Res> {
  __$$_DiscountDtoCopyWithImpl(
      _$_DiscountDto _value, $Res Function(_$_DiscountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_$_DiscountDto(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountDto extends _DiscountDto {
  const _$_DiscountDto(
      {@JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
      @JsonEnum(fieldRename: FieldRename.snake)
          required this.type,
      @JsonKey(name: 'discount_amount')
          required this.amount})
      : super._();

  factory _$_DiscountDto.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountDtoFromJson(json);

  @override
  @JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
  @JsonEnum(fieldRename: FieldRename.snake)
  final DiscountType type;
  @override
  @JsonKey(name: 'discount_amount')
  final int amount;

  @override
  String toString() {
    return 'DiscountDto(type: $type, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountDto &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountDtoCopyWith<_$_DiscountDto> get copyWith =>
      __$$_DiscountDtoCopyWithImpl<_$_DiscountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountDtoToJson(
      this,
    );
  }
}

abstract class _DiscountDto extends DiscountDto {
  const factory _DiscountDto(
      {@JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
      @JsonEnum(fieldRename: FieldRename.snake)
          required final DiscountType type,
      @JsonKey(name: 'discount_amount')
          required final int amount}) = _$_DiscountDto;
  const _DiscountDto._() : super._();

  factory _DiscountDto.fromJson(Map<String, dynamic> json) =
      _$_DiscountDto.fromJson;

  @override
  @JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
  @JsonEnum(fieldRename: FieldRename.snake)
  DiscountType get type;
  @override
  @JsonKey(name: 'discount_amount')
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountDtoCopyWith<_$_DiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageItemDto _$PackageItemDtoFromJson(Map<String, dynamic> json) {
  return _PackageItemDto.fromJson(json);
}

/// @nodoc
mixin _$PackageItemDto {
  String get id => throw _privateConstructorUsedError;
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
  $Res call({String id, PackageServiceDto service});

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
              as String,
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
abstract class _$$_PackageItemDtoCopyWith<$Res>
    implements $PackageItemDtoCopyWith<$Res> {
  factory _$$_PackageItemDtoCopyWith(
          _$_PackageItemDto value, $Res Function(_$_PackageItemDto) then) =
      __$$_PackageItemDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, PackageServiceDto service});

  @override
  $PackageServiceDtoCopyWith<$Res> get service;
}

/// @nodoc
class __$$_PackageItemDtoCopyWithImpl<$Res>
    extends _$PackageItemDtoCopyWithImpl<$Res, _$_PackageItemDto>
    implements _$$_PackageItemDtoCopyWith<$Res> {
  __$$_PackageItemDtoCopyWithImpl(
      _$_PackageItemDto _value, $Res Function(_$_PackageItemDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? service = null,
  }) {
    return _then(_$_PackageItemDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as PackageServiceDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackageItemDto extends _PackageItemDto {
  const _$_PackageItemDto({required this.id, required this.service})
      : super._();

  factory _$_PackageItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_PackageItemDtoFromJson(json);

  @override
  final String id;
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
            other is _$_PackageItemDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.service, service) || other.service == service));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackageItemDtoCopyWith<_$_PackageItemDto> get copyWith =>
      __$$_PackageItemDtoCopyWithImpl<_$_PackageItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageItemDtoToJson(
      this,
    );
  }
}

abstract class _PackageItemDto extends PackageItemDto {
  const factory _PackageItemDto(
      {required final String id,
      required final PackageServiceDto service}) = _$_PackageItemDto;
  const _PackageItemDto._() : super._();

  factory _PackageItemDto.fromJson(Map<String, dynamic> json) =
      _$_PackageItemDto.fromJson;

  @override
  String get id;
  @override
  PackageServiceDto get service;
  @override
  @JsonKey(ignore: true)
  _$$_PackageItemDtoCopyWith<_$_PackageItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageServiceDto _$PackageServiceDtoFromJson(Map<String, dynamic> json) {
  return _PackageServiceDto.fromJson(json);
}

/// @nodoc
mixin _$PackageServiceDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'service')
  @JsonEnum(fieldRename: FieldRename.snake)
  PackageServiceType get type => throw _privateConstructorUsedError;
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
      {String name,
      @JsonKey(name: 'service')
      @JsonEnum(fieldRename: FieldRename.snake)
          PackageServiceType type,
      int amount});
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
abstract class _$$_PackageServiceDtoCopyWith<$Res>
    implements $PackageServiceDtoCopyWith<$Res> {
  factory _$$_PackageServiceDtoCopyWith(_$_PackageServiceDto value,
          $Res Function(_$_PackageServiceDto) then) =
      __$$_PackageServiceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'service')
      @JsonEnum(fieldRename: FieldRename.snake)
          PackageServiceType type,
      int amount});
}

/// @nodoc
class __$$_PackageServiceDtoCopyWithImpl<$Res>
    extends _$PackageServiceDtoCopyWithImpl<$Res, _$_PackageServiceDto>
    implements _$$_PackageServiceDtoCopyWith<$Res> {
  __$$_PackageServiceDtoCopyWithImpl(
      _$_PackageServiceDto _value, $Res Function(_$_PackageServiceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? amount = null,
  }) {
    return _then(_$_PackageServiceDto(
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
class _$_PackageServiceDto extends _PackageServiceDto {
  const _$_PackageServiceDto(
      {required this.name,
      @JsonKey(name: 'service')
      @JsonEnum(fieldRename: FieldRename.snake)
          required this.type,
      required this.amount})
      : super._();

  factory _$_PackageServiceDto.fromJson(Map<String, dynamic> json) =>
      _$$_PackageServiceDtoFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'service')
  @JsonEnum(fieldRename: FieldRename.snake)
  final PackageServiceType type;
  @override
  final int amount;

  @override
  String toString() {
    return 'PackageServiceDto(name: $name, type: $type, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackageServiceDto &&
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
  _$$_PackageServiceDtoCopyWith<_$_PackageServiceDto> get copyWith =>
      __$$_PackageServiceDtoCopyWithImpl<_$_PackageServiceDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackageServiceDtoToJson(
      this,
    );
  }
}

abstract class _PackageServiceDto extends PackageServiceDto {
  const factory _PackageServiceDto(
      {required final String name,
      @JsonKey(name: 'service')
      @JsonEnum(fieldRename: FieldRename.snake)
          required final PackageServiceType type,
      required final int amount}) = _$_PackageServiceDto;
  const _PackageServiceDto._() : super._();

  factory _PackageServiceDto.fromJson(Map<String, dynamic> json) =
      _$_PackageServiceDto.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'service')
  @JsonEnum(fieldRename: FieldRename.snake)
  PackageServiceType get type;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_PackageServiceDtoCopyWith<_$_PackageServiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
