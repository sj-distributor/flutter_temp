/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-15 09:59:05
 */
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';
import 'common/config.dart';
import 'providers/cache.dart';
import 'utils/device_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!DeviceUtils.isWeb) {
    await windowManager.ensureInitialized();
  }
  await Cache.init(Config.env);

  // web使用path路由
  usePathUrlStrategy();
  runApp(const MyApp());
}
