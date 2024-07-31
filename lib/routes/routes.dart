import 'package:flutter_temp/routes/flutter_route.dart';

import '../views/pages/desktop/routes.dart';
import '../views/pages/mobile/routes.dart';
import 'route_abstract.dart';

/// 移动端路由
class MobileRoute extends RouteAbstract {
  @override
  List<FlutterRoute> get routes => MobileRoutes.instance.getRoutes();
}

/// 平板端路由
class IPadpRoute extends RouteAbstract {
  @override
  List<FlutterRoute> get routes => MobileRoutes.instance.getRoutes();
}

/// 桌面端路由
class DesktopRoute extends RouteAbstract {
  @override
  List<FlutterRoute> get routes => DesktopRoutes.instance.getRoutes();
}
