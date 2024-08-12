/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-29 14:13:30
 */
import 'package:flutter/material.dart';

import '../utils/index.dart';

class RouteMiddleware extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    super.didPush(route, previousRoute);

    // 设置当前页路由
    setCurrentRoute(route.settings.name);
  }

  /// 设置当前页路由
  setCurrentRoute(String? name) {
    final route = NavigatorUtils().getCurrentRoute(name);
    if (route != NavigatorUtils().currentRoute) {
      NavigatorUtils().currentRoute = NavigatorUtils().getCurrentRoute(name);
    }
  }
}
