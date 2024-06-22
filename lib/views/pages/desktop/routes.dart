/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:01:06
 */
import 'package:flutter_temp/routes.dart';

import 'home_screen/home_screen.dart';
import 'test_screen/test_screen.dart';

class DesktopRoutes {
  // 页面路由
  static List<FlutterRoute> routes = [
    FlutterRoute(
      path: Routes.home,
      page: (context) => const HomeScreen(),
    ),
    FlutterRoute(
      path: Routes.test,
      subWindow: true,
      hideTitleBar: true,
      minimize: false,
      maximize: false,
      resizable: false,
      page: (context) => const TestScreen(),
    ),
  ];
}
