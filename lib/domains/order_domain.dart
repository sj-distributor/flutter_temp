/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-29 20:53:22
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_domain.g.dart';

// Entity
@JsonSerializable(explicitToJson: true)
class Order implements IOrder {
  Order();

  @override
  @JsonKey(defaultValue: 0)
  int id = 0;

  @override
  @JsonKey(defaultValue: 0)
  int userId = 0;

  @override
  @JsonKey(defaultValue: 0.00)
  double price = 0.00;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
