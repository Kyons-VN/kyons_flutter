import 'dart:convert';

import 'package:flutter/services.dart';

class ConfigReader {
  ConfigReader._();

  static late Map<String, dynamic> _config;
  static late String _env;

  static Future<void> initialize(String env) async {
    _env = env == 'dev' ? Environment.dev : Environment.prod;
    final configString = await rootBundle.loadString('config/$env.json');
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

  static String clientApi() {
    return _config['clientApi'];
  }

  static String get env => _env;
}

abstract class Environment {
  static const dev = 'dev';
  static const prod = 'prod';
  static const stg = 'stg';
}
