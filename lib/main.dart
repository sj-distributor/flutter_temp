/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-15 09:59:05
 */
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'app.dart';

void main() async {
  // web使用path路由
  usePathUrlStrategy();
  runApp(const MyApp());
}
