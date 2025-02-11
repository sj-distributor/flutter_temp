/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-15 09:59:05
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';
import '../config/config.dart';
import 'providers/cache.dart';
import 'utils/device_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 桌面端
  if (!DeviceUtils.isWeb && DeviceUtils.isDesktop) {
    await windowManager.ensureInitialized();
  }

  // App开启霸屏模式
  if (!DeviceUtils.isWeb && DeviceUtils.isMobile) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  await Cache.init(Config.env);

  // web使用path路由
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  runApp(const MyApp());
}
