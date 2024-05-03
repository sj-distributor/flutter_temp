// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserResponse _$UpdateUserResponseFromJson(Map<String, dynamic> json) =>
    UpdateUserResponse()
      ..id = (json['id'] as num?)?.toInt() ?? 0
      ..name = json['name'] as String? ?? ''
      ..email = json['email'] as String? ?? '';

Map<String, dynamic> _$UpdateUserResponseToJson(UpdateUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
