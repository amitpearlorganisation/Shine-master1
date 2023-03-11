
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  // static late String? langValue;
  static late SharedPreferences _preferences;

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static void setSaveLangData(String langValue) {
    _preferences.setString("langData", langValue);
  }
  static String getLangData() {

    String? s = _preferences.getString("langData") ?? 'French';
    return s!;
  }
}