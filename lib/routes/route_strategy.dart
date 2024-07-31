/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-31 18:42:54
 */

import 'route_enum.dart';
import 'routes.dart';
import 'route_abstract.dart';

/// 路由策略
/// phone端、iPad端、pc端
class RouteStrategy {
  static const DeviceTypeEnum mobile = DeviceTypeEnum.mobile;
  static const DeviceTypeEnum iPad = DeviceTypeEnum.iPad;
  static const DeviceTypeEnum desktop = DeviceTypeEnum.desktop;

  /// 装载路由行为策略
  static Map<DeviceTypeEnum, RouteAbstract> routeMap = {
    /// 移动端
    mobile: MobileRoute(),

    /// 平板端
    iPad: IPadpRoute(),

    /// 桌面端
    desktop: DesktopRoute(),
  };

  /// 初始化路由
  static RouteAbstract initRoute(DeviceTypeEnum name) {
    if (!routeMap.containsKey(name)) {
      return routeMap[DeviceTypeEnum.getDefault()]!;
    }

    return routeMap[name]!;
  }
}
