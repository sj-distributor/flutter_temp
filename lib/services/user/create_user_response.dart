/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-02 19:21:31
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/domains/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateUserResponse implements ICreateUserResponse {
  CreateUserResponse();

  @override
  @JsonKey(defaultValue: 0)
  int id = 0;

  @override
  @JsonKey(defaultValue: "")
  String name = "";

  @override
  @JsonKey(defaultValue: "")
  String email = "";

  @JsonKey(defaultValue: null)
  Cart? cart;

  factory CreateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateUserResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateUserResponseToJson(this);
}
