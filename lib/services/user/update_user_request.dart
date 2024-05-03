/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-02 19:20:46
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_user_request.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateUserRequest implements IUpdateUserRequest {
  UpdateUserRequest();

  @override
  @JsonKey(defaultValue: 0)
  int id = 0;

  @override
  @JsonKey(defaultValue: "")
  String name = "";

  @override
  @JsonKey(defaultValue: "")
  String email = "";

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UpdateUserRequestToJson(this);
}
