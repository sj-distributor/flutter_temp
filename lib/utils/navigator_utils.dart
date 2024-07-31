/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-22 20:24:17
 */

import 'package:flutter/material.dart' hide Route;
import 'package:flutter_temp/routes.dart';
import 'package:go_router/go_router.dart';

import '../abstracts/index.dart';
import '../routes/flutter_route.dart';
import '../routes/route_strategy.dart';

/// 【NavigatorUtils1工具类，用于路由跳转】\
/// init：初始化方法，传递路由映射\
/// push：将新页面添加到导航堆栈顶部\
/// getCurrentRoute：获取当前路由\
/// refreshCurrentRoute：刷新当前路由\
/// mapValueToString：map value转成字符串

class NavigatorUtils {
  // 私有构造函数
  NavigatorUtils._internal();

  static final NavigatorUtils _instance = NavigatorUtils._internal();
  static NavigatorUtils get instance => _instance;

  // 工厂构造函数，防止误调用
  factory NavigatorUtils() => _instance;

  static final navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext? get navigatorContext =>
      navigatorKey.currentState?.context;

  /// 当前路由
  FlutterRoute? currentRoute;

  /// 路由列表
  List<FlutterRoute> routes = [];

  /// 是否桌面系统
  late bool isDesktop;

  /// 初始化方法，传递路由映射
  static Widget Function(BuildContext, Widget?) init({
    required List<BaseRoutes<FlutterRoute>> routers,
    required String deviceType,
    Widget Function(BuildContext, Widget?)? builder,
  }) {
    return (BuildContext context, Widget? child) {
      if (builder == null || child == null) {
        return const SizedBox.shrink();
      }

      for (var router in routers) {
        router.init(childContext: context);
      }

      // _instance.isDesktop = isDesktop;

      final routeStrategy = RouteStrategy.initRoute(deviceType);
      _instance.routes = routeStrategy.routes;

      _instance.refreshCurrentRoute();

      return builder(context, child);
    };
  }

  /// 将新页面添加到导航堆栈顶部
  static void push(
    Route route, {
    Map<String, dynamic> pathParameters = const <String, dynamic>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    /// 以后这里要做桌面端窗口多开的功能
    /// 如果不是桌面端，直接return

    // if (!_instance.isDesktop) {
    //   return;
    // }

    navigatorKey.currentState?.context.goNamed(
      route.name,
      pathParameters: mapValueToString(pathParameters),
      queryParameters: mapValueToString(queryParameters),
      extra: extra,
    );
  }

  /// 获取当前路由
  FlutterRoute? getCurrentRoute(String? name) {
    return _instance.routes.where((item) => item.name == name).firstOrNull;
  }

  /// 刷新当前路由
  refreshCurrentRoute() {
    final currentRoute = _instance.currentRoute;
    if (currentRoute is FlutterRoute) {
      _instance.currentRoute = _instance.getCurrentRoute(currentRoute.name);
    }
  }

  /// map value转成字符串
  static Map<String, String> mapValueToString(Map<String, dynamic> inputMap) {
    return inputMap.map((key, value) => MapEntry(key, value.toString()));
  }
}
