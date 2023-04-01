// freezed class PackageDto with fromJson and toDomain
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/package.dart';

part 'package_dto.freezed.dart';
part 'package_dto.g.dart';

@freezed
class PackageDto with _$PackageDto {
  const PackageDto._();
  const factory PackageDto({
    required String id,
    required String name,
    required String description,
    required Map<String, dynamic> discount,
    required int limit,
    required int price,
    required int salePrice,
    required List<Map<String, dynamic>> items,
  }) = _PackageDto;
  // fromJson
  factory PackageDto.fromJson(Map<String, dynamic> json) => _$PackageDtoFromJson(json);
  // toDomain
  Package toDomain() => Package(
        id: id,
        name: name,
        description: description,
        discount: DiscountDto.fromJson(discount).toDomain(),
        limit: limit,
        price: price,
        salePrice: salePrice,
        items: items.map((e) => PackageItemDto.fromJson(e).toDomain()).toList(),
      );
}

@freezed
class DiscountDto with _$DiscountDto {
  const DiscountDto._();
  const factory DiscountDto({
    @JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
    @JsonEnum(fieldRename: FieldRename.snake)
        required DiscountType type,
    @JsonKey(name: 'discount_amount') required int amount,
  }) = _DiscountDto;
  // fromJson
  factory DiscountDto.fromJson(Map<String, dynamic> json) => _$DiscountDtoFromJson(json);
  // toDomain
  Discount toDomain() => Discount(
        type: type,
        amount: amount,
      );
}

@freezed
class PackageItemDto with _$PackageItemDto {
  const PackageItemDto._();
  const factory PackageItemDto({
    required String id,
    required PackageServiceDto service,
  }) = _PackageItemDto;
  // fromJson
  factory PackageItemDto.fromJson(Map<String, dynamic> json) => _$PackageItemDtoFromJson(json);
  // toDomain
  PackageItem toDomain() => PackageItem(id: id, service: service.toDomain());
}

@freezed
class PackageServiceDto with _$PackageServiceDto {
  const PackageServiceDto._();
  const factory PackageServiceDto({
    required String name,
    @JsonKey(name: 'service') @JsonEnum(fieldRename: FieldRename.snake) required PackageServiceType type,
    required int amount,
  }) = _PackageServiceDto;
  // fromJson
  factory PackageServiceDto.fromJson(Map<String, dynamic> json) => _$PackageServiceDtoFromJson(json);
  // toDomain
  PackageService toDomain() => PackageService(name: name, type: type, amount: amount);
}
