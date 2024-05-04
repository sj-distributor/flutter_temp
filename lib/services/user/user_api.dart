/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-04 09:56:28
 */
import 'package:flutter_temp/abstracts/index.dart';
import 'package:flutter_temp/services/index.dart';

// import 'index.dart';

class UserApi {
  static Future<CreateUserResponse?> create(ICreateUserRequest request) async {
    // 这里是api请求
    final res = CreateUserResponse()
      ..id = request.id
      ..name = request.name
      ..email = request.email;

    try {
      // 实际环境中，你需要调整为你的API端点和请求参数
      final response = await Api()
          .post<CreateUserResponse>('/updateEmail', data: request.toJson());
      return response.data;
    } catch (e) {
      return res;
    }
  }
}
