import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/inventory.dart';

part 'inventory_dto.freezed.dart';
part 'inventory_dto.g.dart';

@freezed
class InventoryDto with _$InventoryDto {
  const InventoryDto._();
  const factory InventoryDto({
    @JsonKey(name: 'mock_test') required int mockTest,
    required double subscription,
  }) = _InventoryDto;
  // fromJson
  factory InventoryDto.fromJson(Map<String, dynamic> json) => _$InventoryDtoFromJson(json);
  // toDomain
  Inventory toDomain() => Inventory(mockTest: mockTest, subscription: subscription);
}
