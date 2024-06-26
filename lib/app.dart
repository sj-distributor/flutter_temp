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

import 'common/config.dart';
import 'enums/index.dart';
import 'l10n/gen/app_localizations.dart';
import 'providers_setup.dart';
import 'routes.dart';
import 'theme/custom_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (context, child) {
        final appStore = context.watch<IAppStore>();

        return MaterialApp(
            title: 'flutter_temp',
            locale: appStore.currentLocale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
            themeMode: CustomTheme(appStore: appStore).themeMode,
            theme: ThemeData(
              fontFamily: 'CustomFonts',
              primarySwatch: const MaterialColor(
                0xdd006fff,
                <int, Color>{
                  50: Color(0xdd006fff),
                  100: Color(0xdd006fff),
                  200: Color(0xdd006fff),
                  300: Color(0xdd006fff),
                  400: Color(0xdd006fff),
                  500: Color(0xdd006fff),
                  600: Color(0xdd006fff),
                  700: Color(0xdd006fff),
                  800: Color(0xdd006fff),
                  900: Color(0xdd006fff),
                },
              ),
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
                  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                  TargetPlatform.macOS: NoTransitionPageTransitionsBuilder(),
                },
              ),
            ),
            builder: NavigatorUtils.init(
              Routes.getRoutes(),
              isDesktop: DeviceUtils.isDesktop,
              initialRoute: Routes.home,
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
            routes: Routes.generateRoutes()
            // navigatorObservers: [authMiddleware],
            );
      },
    );
  }
}

// 重写路由跳转的动画
class NoTransitionPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionPageTransitionsBuilder();

  @override
  Widget buildTransitions<String>(
    PageRoute route,
    BuildContext context,
    Animation animation,
    Animation secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
