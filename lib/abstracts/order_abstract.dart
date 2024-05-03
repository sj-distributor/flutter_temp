/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-30 08:22:51
 */

// Entity
import 'package:flutter_temp/abstracts/index.dart';

abstract class IOrder {
  int id;
  int userId;
  double price;
  // List<IProduct> products;

  IOrder({
    required this.id,
    required this.userId,
    required this.price,
    // required this.products,
  });
}

// Service
abstract class IOrderService {
  Future<IOrder> createOrder(IUser user, List<IProduct> products, double price);
}

// Storage
abstract class IOrderStorage {
  List<IOrder> get orders => [];
  set orders(List<IOrder> value);
  void clear();
}
