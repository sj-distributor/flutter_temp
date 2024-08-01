/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-31 18:32:04
 */
/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:43:11
 */
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get_user_agent/get_user_agent.dart';

import '../modules/index.dart';

class DeviceUtils {
  static bool get isDesktop =>
      Platform.isWindows || Platform.isMacOS || Platform.isLinux;

  static bool get isMobile => Platform.isAndroid || Platform.isIOS;

  static bool get isWeb => kIsWeb;
  static bool get isWebPc => kIsWeb && !isMobileUserAgent();
  static bool get isWebMobile => kIsWeb && isMobileUserAgent();

  /// 判断是否移动端web
  static bool isMobileUserAgent() {
    final userAgent = UserAgent();
    RegExp mobileRegExp = RegExp(
        r'android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini',
        caseSensitive: false);
    return mobileRegExp.hasMatch(userAgent.getUserAgent().toLowerCase());
  }

  /// 判断是否iPad
  static bool isIPad(BuildContext context) {
    if (isDesktop) return false;

    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide >= 600 && shortestSide <= 800;
  }

  /// 获取设备类型，分开判断是因为web端不支持Platform
  static DeviceTypeEnum getDeviceType(BuildContext context) {
    if (isWebPc) return DeviceTypeEnum.desktop;
    if (isIPad(context)) return DeviceTypeEnum.iPad;
    if (isWebMobile) return DeviceTypeEnum.mobile;
    if (isMobile) return DeviceTypeEnum.mobile;
    return DeviceTypeEnum.desktop;
  }
}
