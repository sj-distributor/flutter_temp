// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..id = (json['id'] as num?)?.toInt()
  ..name = json['name'] as String? ?? ''
  ..email = json['email'] as String? ?? '';

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
