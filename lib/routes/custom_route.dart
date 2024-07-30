/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-29 20:44:32
 */
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:json_annotation/json_annotation.dart';

import '../middleware/index.dart';
import '../routes.dart';
import '../utils/index.dart';

part 'custom_route.g.dart';

@JsonSerializable(explicitToJson: true)
class FlutterRoute {
  /// 路由名称
  final String name;

  /// 路由路径
  final String path;

  /// 页面
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Widget Function(BuildContext, GoRouterState state)? builder;

  /// 页面标题
  final String? title;

  /// 窗口宽度
  final double width;

  /// 窗口高度
  final double height;

  /// 是否允许最小化
  final bool minimize;

  /// 是否允许最大化
  final bool maximize;

  /// 是否允许全屏
  final bool resizable;

  /// 是否允许关闭
  final bool close;

  /// 是否居中
  final bool center;

  /// 是否需要登录授权
  final bool auth;

  /// 是否子窗口打开
  final bool subWindow;

  /// 更改本机窗口的标题栏样式
  final bool hideTitleBar;

  /// 自定义路由\
  /// name：路由名称\
  /// path：路由路径\
  /// builder：页面\
  /// title：页面标题 960\
  /// width：窗口宽度 640\
  /// height：窗口高度 640\
  /// minimize：是否允许最小化 true\
  /// maximize：是否允许最大化 true\
  /// resizable：是否允许全屏 true\
  /// close：是否允许关闭 true\
  /// center：是否居中 false\
  /// auth：是否需要登录授权 false\
  /// subWindow：是否子窗口打开 false\
  /// hideTitleBar：隐藏标题栏
  FlutterRoute({
    required this.name,
    required this.path,
    this.builder,
    this.title,
    this.width = 960,
    this.height = 640,
    this.minimize = true,
    this.maximize = true,
    this.resizable = true,
    this.close = true,
    this.center = false,
    this.auth = false,
    this.subWindow = false,
    this.hideTitleBar = false,
  });

  factory FlutterRoute.fromJson(Map<String, dynamic> json) =>
      _$FlutterRouteFromJson(json);

  Map<String, dynamic> toJson() => _$FlutterRouteToJson(this);
}

/// 自定义路由
class CustomRoute {
  /// 私有构造函数
  CustomRoute._internal();

  static final CustomRoute _instance = CustomRoute._internal();
  static CustomRoute get instance => _instance;

  /// 工厂构造函数，防止误调用
  factory CustomRoute() => _instance;

  /// 当前路由
  // FlutterRoute? currentRoute;

  /// 根据不同环境，获取路由
  static List<FlutterRoute> getRoutes() {
    if (DeviceUtils.isWebPc) {
      return DesktopRoutes.instance.getRoutes();
    }

    if (DeviceUtils.isWebMobile) {
      return MobileRoutes.instance.getRoutes();
    }

    if (DeviceUtils.isMobile) {
      return MobileRoutes.instance.getRoutes();
    }

    return DesktopRoutes.instance.getRoutes();
  }

  /// 生成路由
  static GoRouter generateRoutes() {
    List<GoRoute> routes = [];
    getRoutes().forEach((item) {
      final route = GoRoute(
        name: item.name,
        path: item.path,
        builder: item.builder,
      );

      routes.add(route);
    });

    final router = GoRouter(
      initialLocation: Routes.home.path,
      routes: routes,
      navigatorKey: NavigatorUtils.navigatorKey,
      observers: [
        RouteMiddleware(),
      ],
    );
    return router;
  }
}
