/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-15 09:59:05
 */
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'app.dart';
import 'common/config.dart';
import 'providers/cache.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Cache.init(Config.env);

  // web使用path路由
  usePathUrlStrategy();
  runApp(const MyApp());
}
