/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-31 18:52:22
 */
import 'package:go_router/go_router.dart';

import '../middleware/index.dart';
import '../routes.dart';
import '../utils/index.dart';
import 'flutter_route.dart';

abstract class RouteAbstract {
  late List<FlutterRoute> routes;

  /// 根据自定义路由FlutterRoute
  /// 组装成GoRoute
  GoRouter generateRoutes() {
    List<GoRoute> routes = [];
    for (var item in this.routes) {
      final route = GoRoute(
        name: item.name,
        path: item.path,
        builder: item.builder,
      );

      routes.add(route);
    }

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
