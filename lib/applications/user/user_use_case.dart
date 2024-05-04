/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-25 11:08:27
 */

// 应用层
import 'dart:convert';

import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/domains/index.dart';

class UserUseCase {
  final IUserService? userService;
  final IUserStore? userStore;

  UserUseCase({
    this.userService,
    this.userStore,
  });

  // 创建用户
  Future<(bool, String)> create(ICreateUserRequest request) async {
    // setp01
    final user = await userService?.create(request);
    if (!user.isEmpty) {
      return (false, "user is empty");
    }

    // 修改user缓存数据
    userStore?.user = user;

    // setp02

    // setp03

    print("user ${jsonEncode(user)}");
    return (true, "");
  }

  // 更新用户
  Future<IUpdateUserResponse?> update(IUpdateUserRequest request) async {
    return await userService?.update(request);
  }
}
