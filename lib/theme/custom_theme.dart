/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-06-17 10:41:43
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/abstracts/index.dart';

class CustomTheme {
  final IAppStore? appStore;

  CustomTheme({
    this.appStore,
  });

  ThemeMode get themeMode =>
      ThemeMode.values[appStore?.themeMode ?? ThemeMode.system.index];
}
