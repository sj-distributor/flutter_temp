// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlutterRoute _$FlutterRouteFromJson(Map<String, dynamic> json) => FlutterRoute(
      name: json['name'] as String,
      path: json['path'] as String,
      title: json['title'] as String?,
      width: (json['width'] as num?)?.toDouble() ?? 960,
      height: (json['height'] as num?)?.toDouble() ?? 640,
      minimize: json['minimize'] as bool? ?? true,
      maximize: json['maximize'] as bool? ?? true,
      resizable: json['resizable'] as bool? ?? true,
      close: json['close'] as bool? ?? true,
      center: json['center'] as bool? ?? false,
      auth: json['auth'] as bool? ?? false,
      subWindow: json['subWindow'] as bool? ?? false,
      hideTitleBar: json['hideTitleBar'] as bool? ?? false,
    );

Map<String, dynamic> _$FlutterRouteToJson(FlutterRoute instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'title': instance.title,
      'width': instance.width,
      'height': instance.height,
      'minimize': instance.minimize,
      'maximize': instance.maximize,
      'resizable': instance.resizable,
      'close': instance.close,
      'center': instance.center,
      'auth': instance.auth,
      'subWindow': instance.subWindow,
      'hideTitleBar': instance.hideTitleBar,
    };
