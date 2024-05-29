/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-03 08:56:51
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:json_annotation/json_annotation.dart';
part 'base_domain.g.dart';

// Entity
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class BaseDomain implements IBaseEntity {
  BaseDomain();

  @override
  int? id;

  factory BaseDomain.fromJson(Map<String, dynamic> json) =>
      _$BaseDomainFromJson(json);
  Map<String, dynamic> toJson() => _$BaseDomainToJson(this);
}

// Entity扩展
extension GenericExtension<T> on T? {
  bool get isEmpty => this == null;
}
