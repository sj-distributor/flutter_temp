/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-29 21:05:26
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/domains/index.dart';

class UseOrderProductsUseCase {
  IPaymentService paymentService;
  INotificationService notificationService;
  IOrderService orderService;
  IOrderStorage orderStorage;
  IUserStore userStore;
  // ICartStorageService cartStorageService;

  UseOrderProductsUseCase(
    this.paymentService,
    this.notificationService,
    this.orderService,
    this.orderStorage,
    this.userStore,
    // this.cartStorageService,
  );

  /// 订单流用例
  Future<void> orderProducts(IUser user, List<IProduct> products) async {
    // 计算商品总价
    final price = totalPrice(products);

    // 创建订单
    final order = await orderService.createOrder(user, products, price);

    // 支付订单
    final paid = await paymentService.tryPay(order.price);
    if (!paid) notificationService.notify("message");

    // 更新订单缓存记录
    orderStorage.orders = [...orderStorage.orders, order];

    print("userStorage ${userStore.user?.name}");

    // 清空购物车
    // cartStorageService.emptyCart();
  }
}
