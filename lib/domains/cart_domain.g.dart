// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart()
  ..id = (json['id'] as num?)?.toInt() ?? 0
  ..name = json['name'] as String? ?? '';

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
