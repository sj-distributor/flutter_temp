/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-02 19:20:46
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/domains/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_request.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateUserRequest implements ICreateUserRequest {
  CreateUserRequest();

  @override
  @JsonKey(defaultValue: 0)
  int id = 0;

  @override
  @JsonKey(defaultValue: "")
  String name = "";

  @override
  @JsonKey(defaultValue: "")
  String email = "";

  @JsonKey(defaultValue: [])
  List<Product> products = [];

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateUserRequestToJson(this);
}
