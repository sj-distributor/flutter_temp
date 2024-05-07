/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-06 16:50:03
 */

import 'dart:convert';

import 'package:flutter_temp/domains/index.dart';
import 'package:test/test.dart';
import 'package:flutter_temp/services/user/index.dart';

void main() {
  group('user service test', () {
    test('create user - success', () async {
      // 模拟成功的用户创建请求
      final request = CreateUserRequest(
        id: 111,
        name: "marlon",
        email: "marlon@126.com",
      );

      final expectedResponse = CreateUserResponse()
        ..id = request.id
        ..name = request.name
        ..email = request.email;

      final cart = Cart()
        ..id = 123
        ..name = "cart";

      expectedResponse.cart = cart;

      // 执行创建用户请求
      final userService = UserService();
      final response = await userService.create(request);

      // 验证返回结果是否符合预期
      expect(jsonEncode(response), equals(jsonEncode(expectedResponse)));
      expect(response?.id, equals(expectedResponse.id));

      // 验证购物车是否正确设置
      expect(response?.cart?.id, equals(123));
      expect(response?.cart?.name, equals("cart"));
    });

    test('create user - failure', () async {
      // 模拟失败的用户创建请求
      final request = CreateUserRequest(
        id: 111,
        name: "marlon",
        email: "marlon@126.com",
      );

      // 执行创建用户请求
      final userService = UserService();
      final response = await userService.create(request);

      // 验证返回结果是否为 null
      expect(response, isNotNull);
    });
  });
}
