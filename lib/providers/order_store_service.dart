/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-30 10:11:25
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/abstracts/index.dart';

/// 实现订单缓存服务
class OrderStorage extends ChangeNotifier implements IOrderStorage {
  List<IOrder> _orders = [];

  @override
  List<IOrder> get orders => _orders;

  @override
  set orders(List<IOrder> value) {
    _orders = value;
    notifyListeners();
  }

  @override
  void clear() {
    _orders = [];
  }
}
