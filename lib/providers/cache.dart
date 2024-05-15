/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-10 17:19:49
 */
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Cache {
  static final Cache _instance = Cache._internal();

  factory Cache() {
    return _instance;
  }

  Cache._internal();

  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // 存储一个字符串值
  Future<void> setString(String key, String value) async {
    assert(_prefs != null, "Cache not initialized");
    await _prefs!.setString(key, value);
  }

  // 获取一个字符串值，如果不存在返回默认值
  String? getString(String key, {String? defaultValue}) {
    assert(_prefs != null, "Cache not initialized");
    return _prefs!.getString(key) ?? defaultValue;
  }

  // 存储一个整型值
  Future<void> setInt(String key, int value) async {
    assert(_prefs != null, "Cache not initialized");
    await _prefs!.setInt(key, value);
  }

  // 获取一个整型值，如果不存在返回默认值
  int? getInt(String key, {int defaultValue = 0}) {
    assert(_prefs != null, "Cache not initialized");
    return _prefs!.getInt(key) ?? defaultValue;
  }

  // 存储一个布尔值
  Future<void> setBool(String key, bool value) async {
    assert(_prefs != null, "Cache not initialized");
    await _prefs!.setBool(key, value);
  }

  // 获取一个布尔值，如果不存在返回默认值
  bool? getBool(String key, {bool defaultValue = false}) {
    assert(_prefs != null, "Cache not initialized");
    return _prefs!.getBool(key) ?? defaultValue;
  }

  // 存储一个Map
  Future<void> setMap(String key, Map<String, dynamic> value) async {
    assert(_prefs != null, "Cache not initialized");
    String jsonString = jsonEncode(value);
    await _prefs!.setString(key, jsonString);
  }

  // 获取一个Map，如果不存在返回空Map
  Map<String, dynamic>? getMap(String key) {
    assert(_prefs != null, "Cache not initialized");
    String? jsonString = _prefs!.getString(key);
    if (jsonString != null) {
      return jsonDecode(jsonString);
    } else {
      return null;
    }
  }

  // 删除指定键的值
  Future<void> remove(String key) async {
    assert(_prefs != null, "Cache not initialized");
    await _prefs!.remove(key);
  }

  // 清空所有存储的值
  Future<void> clear() async {
    assert(_prefs != null, "Cache not initialized");
    await _prefs!.clear();
  }
}
