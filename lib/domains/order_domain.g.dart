// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order()
  ..id = (json['id'] as num?)?.toInt() ?? 0
  ..userId = (json['userId'] as num?)?.toInt() ?? 0
  ..price = (json['price'] as num?)?.toDouble() ?? 0.0;

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'price': instance.price,
    };
