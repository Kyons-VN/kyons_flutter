// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageDto _$$_PackageDtoFromJson(Map<String, dynamic> json) =>
    _$_PackageDto(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      discount: json['discount'] as Map<String, dynamic>,
      limit: json['limit'] as int,
      price: json['price'] as int,
      salePrice: json['salePrice'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_PackageDtoToJson(_$_PackageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'discount': instance.discount,
      'limit': instance.limit,
      'price': instance.price,
      'salePrice': instance.salePrice,
      'items': instance.items,
    };

_$_DiscountDto _$$_DiscountDtoFromJson(Map<String, dynamic> json) =>
    _$_DiscountDto(
      type: $enumDecode(_$DiscountTypeEnumMap, json['discount_type'],
          unknownValue: DiscountType.amount),
      amount: json['discount_amount'] as int,
    );

Map<String, dynamic> _$$_DiscountDtoToJson(_$_DiscountDto instance) =>
    <String, dynamic>{
      'discount_type': _$DiscountTypeEnumMap[instance.type]!,
      'discount_amount': instance.amount,
    };

const _$DiscountTypeEnumMap = {
  DiscountType.amount: 'amount',
  DiscountType.percentage: 'percentage',
};

_$_PackageItemDto _$$_PackageItemDtoFromJson(Map<String, dynamic> json) =>
    _$_PackageItemDto(
      id: json['id'] as String,
      service:
          PackageServiceDto.fromJson(json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PackageItemDtoToJson(_$_PackageItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service': instance.service,
    };

_$_PackageServiceDto _$$_PackageServiceDtoFromJson(Map<String, dynamic> json) =>
    _$_PackageServiceDto(
      name: json['name'] as String,
      type: $enumDecode(_$PackageServiceTypeEnumMap, json['service']),
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$_PackageServiceDtoToJson(
        _$_PackageServiceDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'service': _$PackageServiceTypeEnumMap[instance.type]!,
      'amount': instance.amount,
    };

const _$PackageServiceTypeEnumMap = {
  PackageServiceType.mockTest: 'mock_test',
  PackageServiceType.subscription: 'subscription',
  PackageServiceType.tutorAdvice: 'tutor_advice',
};
