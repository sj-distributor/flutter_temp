/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-30 10:01:17
 */
import 'package:flutter_temp/abstracts/index.dart';

/// 实现支付服务
class PaymentService implements IPaymentService {
  @override
  Future<bool> tryPay(double price) async {
    print("price $price");
    return true;
  }
}
