// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventoryDto _$$_InventoryDtoFromJson(Map<String, dynamic> json) =>
    _$_InventoryDto(
      mockTest: json['mock_test'] as int,
      subscription: (json['subscription'] as num).toDouble(),
    );

Map<String, dynamic> _$$_InventoryDtoToJson(_$_InventoryDto instance) =>
    <String, dynamic>{
      'mock_test': instance.mockTest,
      'subscription': instance.subscription,
    };
