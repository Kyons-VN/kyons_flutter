// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageDtoImpl _$$PackageDtoImplFromJson(Map<String, dynamic> json) =>
    _$PackageDtoImpl(
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

Map<String, dynamic> _$$PackageDtoImplToJson(_$PackageDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'discount': instance.discount.toJson(),
      'limit': instance.limit,
      'price': instance.price,
      'sale_price': instance.salePrice,
      'package_items': instance.items.map((e) => e.toJson()).toList(),
    };

_$DiscountDtoImpl _$$DiscountDtoImplFromJson(Map<String, dynamic> json) =>
    _$DiscountDtoImpl(
      type: $enumDecode(_$DiscountTypeEnumMap, json['discount_type'],
          unknownValue: DiscountType.amount),
      amount: json['discount_amount'] as String? ?? '0.0',
    );

Map<String, dynamic> _$$DiscountDtoImplToJson(_$DiscountDtoImpl instance) =>
    <String, dynamic>{
      'discount_type': _$DiscountTypeEnumMap[instance.type]!,
      'discount_amount': instance.amount,
    };

const _$DiscountTypeEnumMap = {
  DiscountType.amount: 'amount',
  DiscountType.percentage: 'percentage',
};

_$PackageItemDtoImpl _$$PackageItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$PackageItemDtoImpl(
      id: json['id'] as int,
      service:
          PackageServiceDto.fromJson(json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageItemDtoImplToJson(
        _$PackageItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service': instance.service.toJson(),
    };

_$PackageServiceDtoImpl _$$PackageServiceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageServiceDtoImpl(
      name: json['service_type_text'] as String,
      type: $enumDecode(_$PackageServiceTypeEnumMap, json['service_type']),
      amount: json['service_amount'] as int,
    );

Map<String, dynamic> _$$PackageServiceDtoImplToJson(
        _$PackageServiceDtoImpl instance) =>
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
