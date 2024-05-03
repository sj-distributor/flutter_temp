/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:01:06
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/routes.dart';

import 'home_screen/home_screen.dart';

class MobileRoutes {
  // 页面路由
  static Map<String, Widget Function(BuildContext)> routes = {
    Routes.home: (context) => const HomeScreen(),
  };
}
