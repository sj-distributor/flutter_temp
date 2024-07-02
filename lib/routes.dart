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
  /// 私有构造函数
  Routes._internal();

  static final Routes _instance = Routes._internal();
  static Routes get instance => _instance;

  /// 工厂构造函数，防止误调用
  factory Routes() => _instance;

  /// 当前路由
  FlutterRoute? currentRoute;

  // 路由path
  static String home = '/home';
  static String test = '/test';
  static String join = '/join';
  static String room = '/room';
  static String setting = '/setting';
  static String welcomeLogin = '/welcome/login';

  /// 开放路由，无需校验权限
  static final List<String> openRoutes = [
    welcomeLogin,
  ];

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
  static Map<String, Widget Function(BuildContext)> generateRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    getRoutes().forEach((router) {
      routes[router.path] = router.page;
    });

    return routes;
  }
}

class FlutterRoute {
  /// 路由路径
  final String path;

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

  /// 页面
  final Widget Function(BuildContext) page;

  /// 自定义路由\
  /// path：路由路径\
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
  /// hideTitleBar：隐藏标题栏\
  /// page：页面
  FlutterRoute({
    required this.path,
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
    required this.page,
  });
}
