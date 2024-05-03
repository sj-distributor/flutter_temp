/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-29 20:26:25
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_domain.g.dart';

// Entity
@JsonSerializable(explicitToJson: true)
class Product implements IProduct {
  Product();

  @override
  @JsonKey(defaultValue: 0)
  int id = 0;

  @override
  @JsonKey(defaultValue: "")
  String title = "";

  @override
  @JsonKey(defaultValue: 0.00)
  double price = 0.00;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

// 计算商品总价
double totalPrice(List<IProduct> products) {
  return products.fold(0, (total, product) => total + product.price);
}
