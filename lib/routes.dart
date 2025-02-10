/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-29 19:16:48
 */

import 'package:flutter_oxygen/flutter_oxygen.dart';

/// 路由集合
/// name：路由名称，跳转的时候使用
/// path：路由路径
class Routes {
  static Route home = const Route(name: 'home', path: '/home');
  static Route test = const Route(name: 'test', path: '/test/:id');
  static Route join = const Route(name: 'join', path: '/join');
  static Route room = const Route(name: 'room', path: '/room');
  static Route setting = const Route(name: 'setting', path: '/setting');
  static Route welcomeLogin =
      const Route(name: 'welcomeLogin', path: '/welcome/login');
}
