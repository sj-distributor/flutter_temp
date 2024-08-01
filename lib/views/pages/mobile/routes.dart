/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:01:06
 */
import 'package:flutter_temp/abstracts/routes_abstracts.dart';
import 'package:flutter_temp/common/extensions/index.dart';
import 'package:flutter_temp/routes.dart';
import 'package:flutter_temp/modules/index.dart';

import 'screens/home_screen/home_screen.dart';

class MobileRoutes extends BaseRoutes<FlutterRoute> {
  // 私有构造函数
  MobileRoutes._internal();

  static final MobileRoutes _instance = MobileRoutes._internal();
  static MobileRoutes get instance => _instance;

  // 工厂构造函数，防止误调用
  factory MobileRoutes() => _instance;

  // 页面路由
  @override
  List<FlutterRoute> getRoutes() {
    return [
      FlutterRoute(
        name: Routes.home.name,
        path: Routes.home.path,
        title: context?.lang.homePage,
        builder: (context, state) => const HomeScreen(),
      ),
    ];
  }
}
