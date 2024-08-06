/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-22 20:24:17
 */

import 'package:flutter/material.dart' hide Route;
import 'package:go_router/go_router.dart';
import 'package:window_manager/window_manager.dart';

import '../abstracts/index.dart';
import '../modules/index.dart';
import '../router.dart';

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
    required DeviceTypeEnum deviceType,
    required isDesktop,
    Widget Function(BuildContext, Widget?)? builder,
  }) {
    return (BuildContext context, Widget? child) {
      if (builder == null || child == null) {
        return const SizedBox.shrink();
      }

      for (var router in routers) {
        router.init(childContext: context);
      }

      // 这里记得再初始化一次，否则在项目的路由里，第一次进来拿不到context
      final routeStrategy = CustomRouter.init(deviceType);
      _instance.routes = routeStrategy.routes;
      _instance.isDesktop = isDesktop;

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

  /// 切换路由并在桌面端设置窗口的属性和显示状态
  void navigateAndSetupWindow(String? routeName) async {
    if (routeName == null || !_instance.isDesktop) return;

    // 根据routeName找出匹配的路由
    final route =
        _instance.routes.where((route) => route.name == routeName).firstOrNull;

    if (route == null) {
      return;
    }

    WindowOptions windowOptions = WindowOptions(
      size: Size(route.width, route.height),
      center: route.center,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle:
          route.hideTitleBar ? TitleBarStyle.hidden : TitleBarStyle.normal,
    );

    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.setResizable(route.resizable);
      await windowManager.setMinimizable(route.minimize);
      await windowManager.setMaximizable(route.maximize);
      await windowManager.show();
      await windowManager.focus();
    });
  }

  /// 获取当前路由
  FlutterRoute? getCurrentRoute(String? name) {
    navigateAndSetupWindow(name);
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
