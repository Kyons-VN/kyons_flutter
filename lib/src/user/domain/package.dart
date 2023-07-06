// class Package with id: string;
// name: string;
// description: string;
// discount: Discount;
// limit: number;
// price: number;
// formatedSalePrice: string;
// salePrice: number;
// formatedPrice: string;
// items: PackageItem[];

import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';

class Package {
  final String id;
  final String name;
  final String description;
  final Discount discount;
  final int limit;
  final int price;
  final int salePrice;
  final List<PackageItem> items;

  Package(
      {required this.id,
      required this.name,
      required this.description,
      required this.discount,
      required this.limit,
      required this.price,
      required this.salePrice,
      required this.items});

  String formatedSalePrice(Locale locale) => salePrice.price(locale);

  String formatedPrice(Locale locale) => price.price(locale);

  // empty
  factory Package.empty() => Package(
      id: '',
      name: '',
      description: '',
      discount: Discount(type: DiscountType.amount, amount: 0.0),
      limit: 0,
      price: 0,
      salePrice: 0,
      items: []);
}

enum DiscountType {
  @JsonValue("amount")
  amount,
  @JsonValue('percentage')
  percentage
}

class Discount {
  final DiscountType type;
  final double amount;

  Discount({required this.type, required this.amount});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['amount'] = amount;
    return data;
  }
}

enum PackageServiceType {
  @JsonValue("mock_test")
  mockTest,
  @JsonValue("subscription")
  subscription,
  @JsonValue("tutor_advice")
  tutorAdvice
}

class PackageItem {
  final String id;
  final PackageService service;

  PackageItem({required this.id, required this.service});
}

class PackageService {
  final PackageServiceType type;
  final String name;
  final int amount;

  PackageService({required this.type, required this.name, required this.amount});
}
