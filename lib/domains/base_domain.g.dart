// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseDomain _$BaseDomainFromJson(Map<String, dynamic> json) =>
    BaseDomain()..id = (json['id'] as num?)?.toInt();

Map<String, dynamic> _$BaseDomainToJson(BaseDomain instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}
