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

  static Map<String, dynamic> _getFacebook() {
    return _config['facebook'] as Map<String, dynamic>;
  }

  static String getFacebookAppID() {
    final facebook = _getFacebook();
    return facebook['appID'];
  }

  static String getFacebookVersion() {
    final facebook = _getFacebook();
    return facebook['version'];
  }

  static String get env => _env;
}

abstract class Environment {
  static const dev = 'dev';
  static const prod = 'prod';
}
