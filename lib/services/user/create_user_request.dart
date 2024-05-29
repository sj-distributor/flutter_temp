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
  CreateUserRequest({
    required this.id,
    required this.name,
    required this.email,
  });

  @override
  int? id;

  @override
  String name;

  @override
  String email;

  @JsonKey(defaultValue: [])
  List<Product> products = [];

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateUserRequestToJson(this);
}
