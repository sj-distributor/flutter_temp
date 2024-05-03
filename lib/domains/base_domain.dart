/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-03 08:56:51
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:json_annotation/json_annotation.dart';
part 'base_domain.g.dart';

// Entity
@JsonSerializable(explicitToJson: true)
class BaseDomain implements IBaseEntity {
  BaseDomain();

  @override
  @JsonKey(defaultValue: 0)
  int id = 0;

  factory BaseDomain.fromJson(Map<String, dynamic> json) =>
      _$BaseDomainFromJson(json);
  Map<String, dynamic> toJson() => _$BaseDomainToJson(this);
}
