/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-27 10:49:32
 */

import 'package:flutter_temp/abstracts/index.dart';

import '../index.dart';

/// 适配器层
class UserService implements IUserService {
  @override
  Future<ICreateUserResponse?> create(ICreateUserRequest request) async {
    // 这里是api请求
    final result = CreateUserResponse()
      ..id = request.id
      ..name = request.name
      ..email = request.email;
    return result;
  }

  @override
  Future<IUpdateUserResponse> update(IUpdateUserRequest request) async {
    // 这里是api请求
    final result = UpdateUserResponse()
      ..id = request.id
      ..name = request.name
      ..email = request.email;
    return result;
  }

  // @override
  // Future<void> updateUserEmail(String username, String newEmail) async {
  //   try {
  //     // 实际环境中，你需要调整为你的API端点和请求参数
  //     await Api().post('/updateEmail', data: {
  //       'username': username,
  //       'email': newEmail,
  //     });
  //   } catch (e) {
  //     print('Error updating user email: $e');
  //     throw Exception('Failed to update email');
  //   }
  // }
}
