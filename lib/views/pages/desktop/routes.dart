/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:01:06
 */
import 'package:flutter_temp/abstracts/routes_abstracts.dart';
import 'package:flutter_temp/common/extensions/index.dart';
import 'package:flutter_temp/routes.dart';
import 'package:flutter_temp/routes/flutter_route.dart';

import 'screens/home_screen/home_screen.dart';
import 'screens/test_screen/test_screen.dart';

class DesktopRoutes extends BaseRoutes<FlutterRoute> {
  // 私有构造函数
  DesktopRoutes._internal();

  static final DesktopRoutes _instance = DesktopRoutes._internal();
  static DesktopRoutes get instance => _instance;

  // 工厂构造函数，防止误调用
  factory DesktopRoutes() => _instance;

  // 页面路由
  @override
  List<FlutterRoute> getRoutes() {
    return [
      FlutterRoute(
        name: Routes.home.name,
        path: Routes.home.path,
        title: context?.lang.homePage,
        hideTitleBar: true,
        builder: (context, state) => const HomeScreen(),
      ),
      FlutterRoute(
        name: Routes.test.name,
        path: Routes.test.path,
        title: context?.lang.testPage,
        subWindow: true,
        hideTitleBar: true,
        minimize: false,
        maximize: false,
        resizable: false,
        builder: (context, state) {
          // final String id = state.uri.queryParameters['id']!;
          final String id = state.pathParameters['id']!;
          return TestScreen(id: id);
        },
      ),
    ];
  }
}
