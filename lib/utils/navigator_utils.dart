/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-22 20:24:17
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/routes.dart';

/// 【NavigatorUtils工具类，用于路由跳转】\
/// push：将新页面添加到导航堆栈顶部\
/// pushNamed：使用命名路由将新页面添加到导航堆栈顶部，适用于预定义的路由\
/// pushReplacement：替换当前页面，将新页面添加到导航堆栈顶部，并移除当前页面\
/// pushReplacementNamed：使用命名路由替换当前页面\
/// pushAndRemoveUntil：将新页面添加到导航堆栈顶部，并移除堆栈中的所有其他页面，直到满足指定条件为止\
/// pushNamedAndRemoveUntil：使用命名路由将新页面添加到导航堆栈顶部，并移除堆栈中的所有其他页面，直到满足指定条件为止\
/// pop：从导航堆栈中移除当前页面\
/// popUntil：从导航堆栈中移除页面，直到满足指定条件\
/// canPop：检查是否可以从导航堆栈中移除页面\
/// maybePop：尝试从导航堆栈中移除页面，如果可以的话

class NavigatorUtils {
  // 防止外部直接初始化
  NavigatorUtils._();

  static final NavigatorUtils _instance = NavigatorUtils._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext? get navigatorContext =>
      navigatorKey.currentState?.context;

  late Map<String, WidgetBuilder> _routes;

  /// 初始化方法，传递路由映射
  static Widget Function(BuildContext, Widget?) init(
    Map<String, WidgetBuilder> routes, {
    Widget Function(BuildContext, Widget?)? builder,
  }) {
    _instance._routes = routes;

    return (BuildContext context, Widget? child) {
      if (builder == null) {
        return child!;
      }

      return builder(context, child);
    };
  }

  /// 将新页面添加到导航堆栈顶部
  static void push(String routeName) {
    _instance._push(routeName);
  }

  /// 使用命名路由将新页面添加到导航堆栈顶部，适用于预定义的路由
  static void pushNamed(String routeName) {
    _instance._pushNamed(routeName);
  }

  /// 替换当前页面，将新页面添加到导航堆栈顶部，并移除当前页面
  static void pushReplacement(String routeName) {
    _instance._pushReplacement(routeName);
  }

  /// 使用命名路由替换当前页面
  static void pushReplacementNamed(String routeName) {
    _instance._pushReplacementNamed(routeName);
  }

  /// 将新页面添加到导航堆栈顶部，并移除堆栈中的所有其他页面，直到满足指定条件为止
  static void pushAndRemoveUntil(String routeName, RoutePredicate predicate) {
    _instance._pushAndRemoveUntil(routeName, predicate);
  }

  /// 使用命名路由将新页面添加到导航堆栈顶部，并移除堆栈中的所有其他页面，直到满足指定条件为止
  static void pushNamedAndRemoveUntil(
      String routeName, RoutePredicate predicate) {
    _instance._pushNamedAndRemoveUntil(routeName, predicate);
  }

  /// 从导航堆栈中移除当前页面
  static void pop() {
    _instance._pop();
  }

  /// 从导航堆栈中移除页面，直到满足指定条件
  static void popUntil(RoutePredicate predicate) {
    _instance._popUntil(predicate);
  }

  /// 检查是否可以从导航堆栈中移除页面
  static bool canPop() {
    return _instance._canPop();
  }

  /// 尝试从导航堆栈中移除页面
  static Future<bool> maybePop() async {
    return _instance._maybePop();
  }

  /// 实例方法用于实际的逻辑处理
  void _push(String routeName) {
    final route = MaterialPageRoute(
      builder: (context) => _widgetFromRoute(routeName),
    );
    navigatorKey.currentState?.push(route);
  }

  void _pushNamed(String routeName) {
    navigatorKey.currentState?.pushNamed(routeName);
  }

  void _pushReplacement(String routeName) {
    final route = MaterialPageRoute(
      builder: (context) => _widgetFromRoute(routeName),
    );
    navigatorKey.currentState?.pushReplacement(route);
  }

  void _pushReplacementNamed(String routeName) {
    navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

  void _pushAndRemoveUntil(String routeName, RoutePredicate predicate) {
    final route = MaterialPageRoute(
      builder: (context) => _widgetFromRoute(routeName),
    );
    navigatorKey.currentState?.pushAndRemoveUntil(route, predicate);
  }

  void _pushNamedAndRemoveUntil(String routeName, RoutePredicate predicate) {
    navigatorKey.currentState?.pushNamedAndRemoveUntil(routeName, predicate);
  }

  void _pop() {
    navigatorKey.currentState?.pop();
  }

  void _popUntil(RoutePredicate predicate) {
    navigatorKey.currentState?.popUntil(predicate);
  }

  bool _canPop() {
    return navigatorKey.currentState?.canPop() ?? false;
  }

  Future<bool> _maybePop() async {
    return navigatorKey.currentState?.maybePop() ?? Future.value(false);
  }

  static Widget widgetFromRoute(String routeName) {
    return _instance._widgetFromRoute(routeName);
  }

  Widget _widgetFromRoute(String routeName) {
    final builder = _routes[routeName];
    if (builder != null) {
      return builder(navigatorContext!);
    } else {
      return const SizedBox.shrink(); // 如果找不到路由，返回一个默认的 404 页面
    }
  }
}
