/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-01 16:46:02
 */

// Entity
import 'package:flutter/material.dart';
import 'package:flutter_oxygen/flutter_oxygen.dart';

// Storage
abstract class IThemeStore extends ChangeNotifier {
  /// 主题模式
  ThemeMode get themeMode;
  set themeMode(ThemeMode value);

  /// 亮暗模式
  Brightness get brightness;
  set brightness(Brightness value);

  /// 获取当前主题模式
  ThemeMode get getThemeMode;

  /// 是否为暗黑模式
  bool get isDark;

  /// **************
  /// 以下都是颜色相关
  /// **************

  /// 主题色
  ThemeColor get color;

  /// #F5222D 红色 \
  /// 鲜艳的红色，常用于警告或错误提示
  Color get red;

  /// #FA541C 火山红 \
  /// 类似火山岩浆的橙红色，温暖且醒目
  Color get volcano;

  /// #FA8C16 橙色 \
  /// 明亮的橙色，适合强调或高亮显示
  Color get orange;

  /// #FAAD14 金色 \
  /// 类似金色的暖黄色，常用于高亮或重要提示
  Color get gold;

  /// #FADB14 黄色 \
  /// 鲜艳的黄色，适合警告或注意提示
  Color get yellow;

  /// #A0D911 青柠色 \
  /// 清新的黄绿色，常用于成功或积极状态
  Color get lime;

  /// #52C41A 绿色 \
  /// 鲜艳的绿色，代表成功或通过状态
  Color get green;

  /// #13C2C2 青色 \
  /// 清新的青色，适合信息提示或次要内容
  Color get cyan;

  /// #1677FF 蓝色 \
  /// 经典的蓝色，常用于链接或主要操作
  Color get blue;

  /// #2F54EB 极客蓝 \
  /// 深蓝色，适合技术或专业场景
  Color get geekBlue;

  /// #722ED1 紫色 \
  /// 鲜艳的紫色，常用于特殊或高亮内容
  Color get purple;

  /// #EB2F96 洋红色 \
  /// 鲜艳的粉红色，适合强调或女性化设计
  Color get magenta;

  /// #666666 灰色 \
  /// 中性灰色，常用于次要文本或边框
  Color get grey;

  /// 主题色
  Color get primaryColor;
  set primaryColor(Color value);

  /// 文本标题颜色
  Color get textTitleColor;

  /// 主要文本颜色
  Color get textPrimaryColor;

  /// 次要文本颜色
  Color get textSecondaryColor;

  /// 禁用文本颜色
  Color get textDisabledColor;

  /// 边框颜色
  Color get borderPrimaryColor;

  /// 分割线颜色
  Color get dividerColor;

  /// 背景色
  Color get backgroundColor;

  /// 图标颜色
  Color get iconColor;

  /// 链接颜色
  Color get linkColor;

  /// 成功颜色
  Color get successColor;

  /// 警告颜色
  Color get warningColor;

  /// 错误颜色
  Color get errorColor;

  /// **************
  /// 以下都是字体大小相关
  /// **************

  /// 12px
  double get fontSize12;

  /// 14px
  double get fontSize14;

  /// 16px
  double get fontSize16;

  /// 20px
  double get fontSize20;

  /// 24px
  double get fontSize24;

  /// 30px
  double get fontSize30;

  /// 38px
  double get fontSize38;

  /// 46px
  double get fontSize46;

  /// 56px
  double get fontSize56;

  /// 68px
  double get fontSize68;

  /// 小字体 12px
  double get fontSizeSmall;

  /// 默认字体大小 14px
  double get fontSize;

  /// 中字体 16px
  double get fontSizeMedium;

  /// 大字体 20px
  double get fontSizeLarge;

  /// **************
  /// 以下都是行高相关
  /// **************

  /// 行高 20px
  double get lineHeight20;

  /// 行高 22px
  double get lineHeight22;

  /// 行高 24px
  double get lineHeight24;

  /// 行高 28px
  double get lineHeight28;

  /// 行高 32px
  double get lineHeight32;

  /// 行高 38px
  double get lineHeight38;

  /// 行高 46px
  double get lineHeight46;

  /// 行高 54px
  double get lineHeight54;

  /// 行高 64px
  double get lineHeight64;

  /// 行高 76px
  double get lineHeight76;

  /// 行高 20px
  double get lineHeightSmall;

  /// 默认行高大小 22px
  double get lineHeight;

  /// 中行高 24px
  double get lineHeightMedium;

  /// 大行高 28px
  double get lineHeightLarge;

  /// **************
  /// 以下都是字重相关
  /// **************

  /// 默认字重
  FontWeight get fontWeightNormal;

  /// 中字重
  FontWeight get fontWeightMedium;

  /// 粗字重
  FontWeight get fontWeightBold;
}
