// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryDtoImpl _$$InventoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$InventoryDtoImpl(
      mockTest: json['mock_test'] as int,
      subscription: (json['subscription'] as num).toDouble(),
    );

Map<String, dynamic> _$$InventoryDtoImplToJson(_$InventoryDtoImpl instance) =>
    <String, dynamic>{
      'mock_test': instance.mockTest,
      'subscription': instance.subscription,
    };
