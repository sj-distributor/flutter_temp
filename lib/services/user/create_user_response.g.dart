// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserResponse _$CreateUserResponseFromJson(Map<String, dynamic> json) =>
    CreateUserResponse()
      ..id = (json['id'] as num?)?.toInt() ?? 0
      ..name = json['name'] as String? ?? ''
      ..email = json['email'] as String? ?? ''
      ..cart = json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateUserResponseToJson(CreateUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'cart': instance.cart?.toJson(),
    };
