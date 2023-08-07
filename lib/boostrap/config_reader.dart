import 'dart:convert';

import 'package:flutter/services.dart';

class ConfigReader {
  ConfigReader._();

  static late Map<String, dynamic> _config;
  static late Environment _env;

  static Future<void> initialize(Environment env) async {
    _env = env;
    final configString = await rootBundle.loadString('config/${env.toString()}.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static bool isProduction() {
    return _config['production'] as bool;
  }

  static String name() {
    return _config['name'];
  }

  static String isPromotionEnable() {
    return _config['isPromotionEnable'];
  }

  static String serverApi() {
    return _config['serverApi'];
  }

  static String serverFirebase() {
    return _config['serverFirebase'];
  }

  static String clientApi() {
    return _config['clientApi'];
  }

  static String getReportUrl() {
    return _config['reportUrl'];
  }

  static Environment get env => _env;
}

enum Environment {
  dev('dev'),
  stg('stg'),
  prod('prod');

  const Environment(this.text);
  final String text;

  @override
  String toString() => text;
}
