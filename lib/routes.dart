/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:22:30
 */

import 'package:flutter/material.dart';

import 'routes.dart';
import 'utils/index.dart';

export 'views/pages/desktop/routes.dart';
export 'views/pages/mobile/routes.dart';

class Routes {
  static String home = '/home';
  static String test = '/test';
  static String join = '/join';
  static String room = '/room';
  static String setting = '/setting';
  static String welcomeLogin = '/welcome/login';

  // 开放路由，无需校验权限
  static final List<String> openRoutes = [
    welcomeLogin,
  ];

  // 根据不同环境，获取路由
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    if (DeviceUtils.isWebPc) {
      return DesktopRoutes.routes;
    }

    if (DeviceUtils.isWebMobile) {
      return MobileRoutes.routes;
    }

    if (DeviceUtils.isMobile) {
      return MobileRoutes.routes;
    }

    return DesktopRoutes.routes;
  }
}
