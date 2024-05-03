/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-29 20:53:22
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_domain.g.dart';

// Entity
@JsonSerializable(explicitToJson: true)
class Cart implements ICart {
  Cart();

  @override
  @JsonKey(defaultValue: 0)
  int id = 0;

  @override
  @JsonKey(defaultValue: "")
  String name = "";

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
  Map<String, dynamic> toJson() => _$CartToJson(this);
}
