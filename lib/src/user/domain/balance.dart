import 'dart:ui';

import 'package:kyons_flutter/src/core/helper/translate.dart';

class Balance {
  final int value;
  late String formatedValue;
  final Locale? locale;
  Balance(this.value, [this.locale]) {
    formatedValue = value.price(locale ?? const Locale('vi'));
  }
  factory Balance.empty() => Balance(0);
}
