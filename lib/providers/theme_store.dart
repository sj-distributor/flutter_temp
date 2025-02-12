/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2025-02-11 14:28:55
 */

import 'package:flutter/material.dart';
import 'package:flutter_oxygen/flutter_oxygen.dart';
import 'package:flutter_temp/abstracts/theme_abstract.dart';
import 'package:flutter_temp/config/config.dart';
import 'package:flutter_temp/providers/cache.dart';

class ThemeStore extends ChangeNotifier implements IThemeStore {
  /// 主题模式
  @override
  ThemeMode get themeMode =>
      ThemeMode.values[Cache.getInt("themeModeIndex", defaultValue: 1) ??
          ThemeMode.system.index];

  @override
  set themeMode(ThemeMode value) {
    if (value.index != themeMode.index) {
      Cache.setInt("themeModeIndex", value.index);
      notifyListeners();
    }
  }

  /// 亮暗模式
  @override
  Brightness get brightness =>
      Brightness.values[Cache.getInt("brightnessIndex", defaultValue: 1) ??
          Brightness.light.index];

  @override
  set brightness(Brightness value) {
    if (value.index != brightness.index) {
      Cache.setInt("brightnessIndex", value.index);
      notifyListeners();
    }
  }

  @override
  ThemeMode get getThemeMode {
    if (themeMode != ThemeMode.system) return themeMode;
    return brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
  }

  @override
  bool get isDark => getThemeMode == ThemeMode.dark;

  /// 主题色
  String _primary = Cache.getString("primaryColor") ?? Config.primaryColor;

  @override
  ThemeColor get color => ThemeColor.generate(hexColor(_primary));

  @override
  Color get primary => color.primary;

  @override
  set primary(Color value) {
    if (value != primary) {
      _primary = ThemeColor.colorToHex(value);
      Cache.setString("primaryColorColor", _primary);
      notifyListeners();
    }
  }

  /// 功能色
  /// --------------------------------------------------------------------------
  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get red => const Color(0xFFF5222D);

  @override
  Color get volcano => const Color(0xFFFA541C);

  @override
  Color get orange => const Color(0xFFFA8C16);

  @override
  Color get gold => const Color(0xFFFAAD14);

  @override
  Color get yellow => const Color(0xFFFADB14);

  @override
  Color get lime => const Color(0xFFA0D911);

  @override
  Color get green => const Color(0xFF52C41A);

  @override
  Color get cyan => const Color(0xFF13C2C2);

  @override
  Color get blue => const Color(0xFF1677FF);

  @override
  Color get geekBlue => const Color(0xFF2F54EB);

  @override
  Color get purple => const Color(0xFF722ED1);

  @override
  Color get magenta => const Color(0xFFEB2F96);

  @override
  Color get grey => const Color(0xFF666666);

  /// 品牌色
  /// 后续如果觉得颜色顺序不对，可以进行调换
  // --------------------------------------------------------------------------

  @override
  Color get primaryColor => isDark ? color.shade800 : color.shade600;

  @override
  Color get buttonBackgroundColor => isDark ? color.shade700 : color.shade500;

  @override
  Color get buttonHoverBackgroundColor =>
      isDark ? color.shade800 : color.shade400;

  @override
  Color get buttonActiveBackgroundColor =>
      isDark ? color.shade900 : color.shade600;

  @override
  Color get cardBackgroundColor => isDark ? color.shade900 : color.shade200;

  @override
  Color get cardBorderColor => isDark ? color.shade800 : color.shade300;

  @override
  Color get linkColor => isDark ? color.shade500 : color.shade700;

  @override
  Color get linkHoverColor => isDark ? color.shade400 : color.shade600;

  @override
  Color get inputBorderColor => isDark ? color.shade700 : color.shade300;

  @override
  Color get inputHoverBorderColor => isDark ? color.shade600 : color.shade400;

  @override
  Color get inputFocusBorderColor => isDark ? color.shade500 : color.shade500;

  @override
  Color get warningBackgroundColor => isDark ? color.shade800 : color.shade100;

  @override
  Color get warningTextColor => isDark ? color.shade100 : color.shade900;

  @override
  Color get successBackgroundColor => isDark ? color.shade700 : color.shade200;

  @override
  Color get successTextColor => isDark ? color.shade100 : color.shade800;

  @override
  Color get errorBackgroundColor => isDark ? color.shade900 : color.shade100;

  @override
  Color get errorTextColor => isDark ? color.shade100 : color.shade1000;

  @override
  Color get disabledBackgroundColor => isDark ? color.shade800 : color.shade100;

  @override
  Color get disabledTextColor => isDark ? color.shade300 : color.shade500;

  @override
  Color get tableRowHoverBackgroundColor =>
      isDark ? color.shade800 : color.shade100;

  @override
  Color get tableRowSelectedBackgroundColor =>
      isDark ? color.shade700 : color.shade200;

  // @override
  // Color get dividerColor => isDark ? color.shade700 : color.shade300;

  @override
  Color get tooltipBackgroundColor => isDark ? color.shade800 : color.shade500;

  @override
  Color get tooltipTextColor => isDark ? color.shade100 : color.shade1000;

  /// 中性色
  /// --------------------------------------------------------------------------
  @override
  Color get textTitleColor =>
      isDark ? const Color(0xD9FFFFFF) : const Color(0xE0000000);

  @override
  Color get textPrimaryColor =>
      isDark ? const Color(0xD9FFFFFF) : const Color(0xE0000000);

  @override
  Color get textSecondaryColor =>
      isDark ? const Color(0xA6FFFFFF) : const Color(0xA6000000);

  @override
  Color get textDisabledColor =>
      isDark ? const Color(0x40FFFFFF) : const Color(0x40000000);

  @override
  Color get borderPrimaryColor =>
      isDark ? const Color(0xFF424242) : const Color(0xFFD9D9D9);

  @override
  Color get dividerColor =>
      isDark ? const Color(0x1FFDFDFD) : const Color(0x0F050505);

  @override
  Color get backgroundColor =>
      isDark ? const Color(0xFF000000) : const Color(0xFFF5F5F5);

  @override
  Color get iconColor =>
      isDark ? const Color(0xD9FFFFFF) : const Color(0xE0000000);

  // @override
  // Color get linkColor => blue;

  @override
  Color get successColor => green;

  @override
  Color get warningColor => gold;

  @override
  Color get errorColor => const Color(0xFFFF4D4F);

  @override
  double get fontSize12 => 12.0;

  @override
  double get fontSize14 => 14.0;

  @override
  double get fontSize16 => 16.0;

  @override
  double get fontSize20 => 20.0;

  @override
  double get fontSize24 => 24.0;

  @override
  double get fontSize30 => 30.0;

  @override
  double get fontSize38 => 38.0;

  @override
  double get fontSize46 => 46.0;

  @override
  double get fontSize56 => 56.0;

  @override
  double get fontSize68 => 68.0;

  @override
  double get fontSizeSmall => fontSize12;

  @override
  double get fontSize => fontSize14;

  @override
  double get fontSizeMedium => fontSize16;

  @override
  double get fontSizeLarge => fontSize20;

  @override
  double get lineHeight20 => 20.0;

  @override
  double get lineHeight22 => 22.0;

  @override
  double get lineHeight24 => 24.0;

  @override
  double get lineHeight28 => 28.0;

  @override
  double get lineHeight32 => 32.0;

  @override
  double get lineHeight38 => 38.0;

  @override
  double get lineHeight46 => 46.0;

  @override
  double get lineHeight54 => 54.0;

  @override
  double get lineHeight64 => 64.0;

  @override
  double get lineHeight76 => 76.0;

  @override
  double get lineHeightSmall => lineHeight20;

  @override
  double get lineHeight => lineHeight22;

  @override
  double get lineHeightMedium => lineHeight24;

  @override
  double get lineHeightLarge => lineHeight28;

  @override
  FontWeight get fontWeightNormal => FontWeight.normal;

  @override
  FontWeight get fontWeightMedium => FontWeight.w500;

  @override
  FontWeight get fontWeightBold => FontWeight.bold;
}
