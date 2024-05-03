/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-30 08:10:14
 */
abstract class IPaymentService {
  Future<bool> tryPay(double price);
}
