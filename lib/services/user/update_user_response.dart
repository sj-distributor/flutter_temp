/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-02 20:29:26
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_user_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateUserResponse implements IUpdateUserResponse {
  UpdateUserResponse();

  @override
  @JsonKey(defaultValue: 0)
  int? id = 0;

  @override
  @JsonKey(defaultValue: "")
  String name = "";

  @override
  @JsonKey(defaultValue: "")
  String email = "";

  factory UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UpdateUserResponseToJson(this);
}
