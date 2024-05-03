// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    UpdateUserRequest()
      ..id = (json['id'] as num?)?.toInt() ?? 0
      ..name = json['name'] as String? ?? ''
      ..email = json['email'] as String? ?? '';

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };
