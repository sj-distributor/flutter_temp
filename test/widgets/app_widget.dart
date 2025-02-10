/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-06 21:43:21
 */
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_temp/providers_setup.dart';
import 'package:flutter_temp/router.dart';
import 'package:flutter_temp/utils/index.dart';
import 'package:provider/provider.dart';

class TestAppWidget extends StatelessWidget {
  final Widget child;

  const TestAppWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final deviceType = DeviceUtils.getDeviceType(context);
    final routeStrategy = CustomRouter.init(deviceType);
    routeStrategy.navigatorKey ??= GlobalKey<NavigatorState>();

    NavigatorUtils().isDesktop = true;

    return MultiProvider(
      providers: providers,
      child: MaterialApp.router(
        // routerConfig: CustomRoute.generateRoutes(),
        routerConfig: routeStrategy.generateRoutes(),
        builder: FlutterSmartDialog.init(),
      ),
    );
  }
}
