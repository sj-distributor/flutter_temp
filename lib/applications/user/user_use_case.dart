/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-25 11:08:27
 */

// 应用层
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/domains/index.dart';
import 'package:flutter_temp/services/index.dart';

class UserUseCase {
  final IUserService userService;
  final IUserStore userStore;

  UserUseCase(this.userService, this.userStore);

  // 创建用户
  Future<ICreateUserResponse?> create(ICreateUserRequest request) async {
    // if (!ValidatorUtils.validate("email", request.email)) {
    //   ToastUtils.showToast("email is error");
    //   return null;
    // }

    // 调用user service
    final user = await userService.create(request);
    if (user.isEmpty) {
      return null;
    }

    // 其他操作
    final result = CreateUserResponse.fromJson(user!.toJson());
    final cart = Cart()
      ..id = 123
      ..name = "cart";

    result.cart = cart;

    return result;
  }

  // 更新用户
  Future<IUpdateUserResponse?> update(IUpdateUserRequest request) async {
    return await userService.update(request);
  }
}
