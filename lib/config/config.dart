/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-24 15:28:02
 */
import 'package:flutter/foundation.dart';

class Config {
  /// 应用名称
  static String appName = "lemon_pos";

  /// 默认语言
  static const String defaultLanguage = "zh";

  /// 主题色
  static const String primaryColor = "#1677FF";

  /// 接口地址
  static String apiUrl = "";

  /// 超时时间
  static int timeout = 30;

  /// 版本号
  static String version = "0.0.0";

  /// 环境
  static String env = "dev";

  /// 是否为调试模式
  static bool isDebugMode = kDebugMode;
}
