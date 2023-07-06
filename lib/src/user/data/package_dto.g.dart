// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackageDto _$$_PackageDtoFromJson(Map<String, dynamic> json) =>
    _$_PackageDto(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      discount: DiscountDto.fromJson(json['discount'] as Map<String, dynamic>),
      limit: json['limit'] as int? ?? 99,
      price: json['price'] as String,
      salePrice: json['sale_price'] as String,
      items: (json['package_items'] as List<dynamic>)
          .map((e) => PackageItemDto.fromJson(e as Map<String, dynamic>))
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
      'sale_price': instance.salePrice,
      'package_items': instance.items,
    };

_$_DiscountDto _$$_DiscountDtoFromJson(Map<String, dynamic> json) =>
    _$_DiscountDto(
      type: $enumDecode(_$DiscountTypeEnumMap, json['discount_type'],
          unknownValue: DiscountType.amount),
      amount: json['discount_amount'] as String? ?? '0.0',
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
      id: json['id'] as int,
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
      name: json['service_type_text'] as String,
      type: $enumDecode(_$PackageServiceTypeEnumMap, json['service_type']),
      amount: json['service_amount'] as int,
    );

Map<String, dynamic> _$$_PackageServiceDtoToJson(
        _$_PackageServiceDto instance) =>
    <String, dynamic>{
      'service_type_text': instance.name,
      'service_type': _$PackageServiceTypeEnumMap[instance.type]!,
      'service_amount': instance.amount,
    };

const _$PackageServiceTypeEnumMap = {
  PackageServiceType.mockTest: 'mock_test',
  PackageServiceType.subscription: 'subscription',
  PackageServiceType.tutorAdvice: 'tutor_advice',
};
