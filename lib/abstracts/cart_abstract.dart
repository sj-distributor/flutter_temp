/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-30 09:51:20
 */
// 购物车缓存接口

// Entity
abstract class ICart {
  int get id;
  set id(int value);

  String get name;
  set name(String value);
}

// Service
abstract class ICartStorageService {
  List<ICart> carts = [];
  void clear();
}
