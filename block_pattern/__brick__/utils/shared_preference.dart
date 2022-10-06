import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPre {

  static const String isLogin = 'is_login';
  static const String appLanguage = 'appLanguage';
  static const String loginUser = 'loginUser';
  static const String deviceToken = 'deviceToken';
  static const String currencySymbol = 'currencySymbol';

  static Future<bool> setStringValue(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString(key, value);
  }

  static Future<bool> setBoolValue(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(key, value);
  }

  static Future<bool> setIntValue(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setInt(key, value);
  }

  static getStringValue(String key, {String defaultValue = ''}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? defaultValue;
  }

  static getBoolValue(String key, {bool defaultValue = false}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? defaultValue;
  }

  static getIntValue(String key, {int defaultValue = -1}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? defaultValue;
  }

  static Future<bool> clearAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool res= await prefs.clear();
    print(res);
    return prefs.clear();
  }

  /// call this method like this
  ///  LoginData data=LoginData.fromJson(loginresponse.data.tojson())
  /// sp.setObj("",data);
  static setObj(String key, var toJson) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String user = jsonEncode(toJson);
    return await prefs.setString(key, user);
  }

  /// call this method like this
  ///var data= sp.getObj("key);
  ///Login loginData= Logindata.fromjson(data);
  static Future<Map<String, dynamic>> getObj(String key) async {
    Map<String, dynamic> json = {};
    if (key.isNotEmpty) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String str = prefs.getString(key) ?? "";
      if (str.isNotEmpty) {
        json = jsonDecode(str);
      }
      json;
    }
    return json; // get data by calling from json method in model class
  }
}
