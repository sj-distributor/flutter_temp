/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-30 20:53:46
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/services/index.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'providers/index.dart';

List<SingleChildWidget> providers = [
  /// Service
  /// 依赖注入
  Provider<IPaymentService>(create: (context) => PaymentService()),
  Provider<INotificationService>(create: (context) => NotificationService()),
  Provider<IUserService>(create: (context) => UserService()),
  Provider<IOrderService>(create: (context) => OrderService()),

  // Store
  ListenableProvider<IUserStore>(create: (context) => UserStore()),
];
