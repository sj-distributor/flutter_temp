/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-29 19:16:48
 */

import 'modules/index.dart';

/// 路由集合
/// name：路由名称，跳转的时候使用
/// path：路由路径
class Routes {
  static Route home = Route(name: 'home', path: '/home');
  static Route test = Route(name: 'test', path: '/test/:id');
  static Route join = Route(name: 'join', path: '/join');
  static Route room = Route(name: 'room', path: '/room');
  static Route setting = Route(name: 'setting', path: '/setting');
  static Route welcomeLogin =
      Route(name: 'welcomeLogin', path: '/welcome/login');
}
