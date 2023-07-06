// freezed class PackageDto with fromJson and toDomain
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/package.dart';

part 'package_dto.freezed.dart';
part 'package_dto.g.dart';

@freezed
class PackageDto with _$PackageDto {
  const PackageDto._();
  const factory PackageDto({
    required int id,
    required String name,
    required String description,
    required DiscountDto discount,
    @JsonKey(defaultValue: 99) required int limit,
    required String price,
    @JsonKey(name: 'sale_price') required String salePrice,
    @JsonKey(name: 'package_items') required List<PackageItemDto> items,
  }) = _PackageDto;
  // fromJson
  factory PackageDto.fromJson(Map<String, dynamic> json) => _$PackageDtoFromJson(json);
  // toDomain
  Package toDomain() => Package(
        id: id.toString(),
        name: name,
        description: description,
        discount: discount.toDomain(),
        limit: limit,
        price: double.parse(price).toInt(),
        salePrice: double.parse(salePrice).toInt(),
        items: items.map((e) => e.toDomain()).toList(),
      );
}

@freezed
class DiscountDto with _$DiscountDto {
  const DiscountDto._();
  const factory DiscountDto({
    @JsonKey(name: 'discount_type', unknownEnumValue: DiscountType.amount)
    @JsonEnum(fieldRename: FieldRename.snake)
        required DiscountType type,
    @JsonKey(name: 'discount_amount', defaultValue: '0.0') required String amount,
  }) = _DiscountDto;
  // fromJson
  factory DiscountDto.fromJson(Map<String, dynamic> json) => _$DiscountDtoFromJson(json);
  // toDomain
  Discount toDomain() => Discount(
        type: type,
        amount: double.parse(amount),
      );
}

@freezed
class PackageItemDto with _$PackageItemDto {
  const PackageItemDto._();
  const factory PackageItemDto({
    required int id,
    required PackageServiceDto service,
  }) = _PackageItemDto;
  // fromJson
  factory PackageItemDto.fromJson(Map<String, dynamic> json) => _$PackageItemDtoFromJson(json);
  // toDomain
  PackageItem toDomain() => PackageItem(id: id.toString(), service: service.toDomain());
}

@freezed
class PackageServiceDto with _$PackageServiceDto {
  const PackageServiceDto._();
  const factory PackageServiceDto({
    @JsonKey(name: 'service_type_text') required String name,
    @JsonKey(name: 'service_type') @JsonEnum(fieldRename: FieldRename.snake) required PackageServiceType type,
    @JsonKey(name: 'service_amount') required int amount,
  }) = _PackageServiceDto;
  // fromJson
  factory PackageServiceDto.fromJson(Map<String, dynamic> json) => _$PackageServiceDtoFromJson(json);
  // toDomain
  PackageService toDomain() => PackageService(name: name, type: type, amount: amount);
}
