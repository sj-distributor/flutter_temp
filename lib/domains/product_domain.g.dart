// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product()
  ..id = (json['id'] as num?)?.toInt() ?? 0
  ..title = json['title'] as String? ?? ''
  ..price = (json['price'] as num?)?.toDouble() ?? 0.0;

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
    };
