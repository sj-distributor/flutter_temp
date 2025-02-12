/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-24 14:29:46
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/config/config.dart';

import 'cache.dart';

class AppStore extends ChangeNotifier implements IAppStore<Locale> {
  String _lang = Cache.getString("lang") ?? Config.defaultLanguage;

  @override
  String get lang => _lang;

  @override
  set lang(String value) {
    if (value != lang) {
      _lang = value;
      Cache.setString("lang", value);
      notifyListeners();
    }
  }

  /// 当前多语言
  @override
  Locale get currentLocale {
    final t = _lang.split("_");

    if (t.length == 1) {
      return Locale(t[0]);
    }
    return Locale(t[0], t[1]);
  }

  @override
  void clear() {}
}
