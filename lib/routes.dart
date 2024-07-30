/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-29 19:16:48
 */

export 'views/pages/desktop/routes.dart';
export 'views/pages/mobile/routes.dart';

export 'routes/index.dart';

class Route {
  const Route({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;
}

class Routes {
  // 路由path
  static Route home = const Route(name: 'home', path: '/home');
  static Route test = const Route(name: 'test', path: '/test/:id');
  static Route join = const Route(name: 'join', path: '/join');
  static Route room = const Route(name: 'room', path: '/room');
  static Route setting = const Route(name: 'setting', path: '/setting');
  static Route welcomeLogin =
      const Route(name: 'welcomeLogin', path: '/welcome/login');
}
