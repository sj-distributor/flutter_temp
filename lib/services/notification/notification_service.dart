/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-30 10:09:29
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/utils/index.dart';

/// 实现通知服务
class NotificationService implements INotificationService {
  @override
  void notify(String message) {
    ToastUtils.showToast(message);
  }
}
