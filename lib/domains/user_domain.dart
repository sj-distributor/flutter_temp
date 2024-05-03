/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-01 16:35:43
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:json_annotation/json_annotation.dart';

import 'index.dart';

part 'user_domain.g.dart';

// Entity
@JsonSerializable(explicitToJson: true)
class User extends BaseDomain implements IUser {
  User();

  @override
  @JsonKey(defaultValue: "")
  String name = "";

  @override
  @JsonKey(defaultValue: "")
  String email = "";

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

// Entity扩展
extension UserExtension on IUser? {
  bool get isEmpty => this == null;
}
