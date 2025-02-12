/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 19:55:57
 */
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/utils/index.dart';
import 'package:provider/provider.dart';

import 'common/index.dart';
import 'config/config.dart';
import 'providers_setup.dart';
import 'router.dart';
import 'theme/custom_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (context, child) {
        final appStore = context.watch<IAppStore>();
        final themeStore = context.watch<IThemeStore>();

        // 获取设备类型并且初始化路由
        final deviceType = DeviceUtils.getDeviceType(context);
        final routeStrategy = CustomRouter.init(deviceType);
        routeStrategy.navigatorKey ??= GlobalKey<NavigatorState>();

        return MaterialApp.router(
          title: Config.appName,
          routerConfig: routeStrategy.generateRoutes(),
          locale: appStore.currentLocale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          themeMode: themeStore.themeMode,
          theme: createLightTheme(
            type: Brightness.light,
            themeStore: themeStore,
          ),
          darkTheme: createLightTheme(
            type: Brightness.dark,
            themeStore: themeStore,
          ),
          builder: NavigatorUtils.init(
            // 初始化路由
            routers: [
              DesktopRoutes(),
              MobileRoutes(),
            ],
            deviceType: deviceType,
            isDesktop: !DeviceUtils.isWeb && DeviceUtils.isDesktop,
            builder: FlutterSmartDialog.init(builder: (context, child) {
              if (Config.env != EnvEnum.master.name) {
                return Banner(
                  message: Config.env.toUpperCase(),
                  location: BannerLocation.bottomEnd,
                  child: child,
                );
              }
              return child!;
            }),
          ),
        );
      },
    );
  }
}
