/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-07 08:34:29
 */
import 'dart:convert';

import 'package:flutter_temp/services/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserApi Tests', () {
    final testRequest =
        CreateUserRequest(id: 123, name: 'John Doe', email: 'john@example.com');
    final successResponse = CreateUserResponse()
      ..id = 123
      ..name = "John Doe"
      ..email = "john@example.com";

    test('Create user successfully', () async {
      final result = await UserApi.create(testRequest);

      // Verify the results
      expect(jsonEncode(result), equals(jsonEncode(successResponse)));
    });
  });
}
