/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:43:11
 */
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:get_user_agent/get_user_agent.dart';

class DeviceUtils {
  static bool get isDesktop =>
      Platform.isWindows || Platform.isMacOS || Platform.isLinux;

  static bool get isMobile => Platform.isAndroid || Platform.isIOS;

  static bool get isWeb => kIsWeb;
  static bool get isWebPc => kIsWeb && !isMobileUserAgent();
  static bool get isWebMobile => kIsWeb && isMobileUserAgent();

  static bool isMobileUserAgent() {
    final userAgent = UserAgent();
    RegExp mobileRegExp = RegExp(
        r'android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini',
        caseSensitive: false);
    return mobileRegExp.hasMatch(userAgent.getUserAgent().toLowerCase());
  }
}
