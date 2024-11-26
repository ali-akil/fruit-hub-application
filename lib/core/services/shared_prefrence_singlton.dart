import 'package:shared_preferences/shared_preferences.dart';

/// A singleton class for managing shared preferences.
/// check if the user is show splash view or not
/// where storge that in bool
class Prefs {
  static SharedPreferences? _instance;
  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _instance!.setBool(key, value);
  }

  static getBool(key) {
    return _instance!.getBool(key) ?? false;
  }
}
