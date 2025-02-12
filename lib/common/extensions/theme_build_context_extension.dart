/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2025-02-11 21:34:16
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/abstracts/theme_abstract.dart';
import 'package:provider/provider.dart';

extension ThemeBuildContextExtension on BuildContext {
  IThemeStore get themeStore => select((IThemeStore value) => value);
}
