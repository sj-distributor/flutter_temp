/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-27 10:49:32
 */

import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/domains/index.dart';

/// 适配器层
class OrderService implements IOrderService {
  @override
  Future<IOrder> createOrder(
      IUser user, List<IProduct> products, double price) async {
    // final order = Order(id: 123, userId: 456, price: 12.02, products: products);
    return Order();
  }
}
