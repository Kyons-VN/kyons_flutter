// import 'sandbox_service.dart' as service;

// class Api implements IApi {

// }
import 'package:shared_preferences/shared_preferences.dart';

class SandboxApi {
  static final accounts = ['ddhiep448@gmail.com', 'binhhm2009@gmail.com'];
  static activate() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('sandbox', 'true');
  }

  static deactivate() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('sandbox');
  }
}
