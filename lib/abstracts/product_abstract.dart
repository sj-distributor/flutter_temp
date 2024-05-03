/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-01 16:46:02
 */

// Entity
abstract class IProduct {
  int id;
  String title;
  double price;

  IProduct({
    required this.id,
    required this.title,
    required this.price,
  });
}
