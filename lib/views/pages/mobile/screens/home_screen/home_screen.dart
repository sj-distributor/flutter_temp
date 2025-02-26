/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:01:23
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/services/index.dart';
import 'package:flutter_temp/domains/index.dart';
import 'package:flutter_temp/utils/index.dart';
import 'package:flutter_temp/views/hooks/use_home_hooks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final useAction = UseHomeHooks(context);

    // attr
    final userStore = useAction.userStore;
    final useUser = useAction.user;

    return Scaffold(
      appBar: AppBar(
        title: const Text("mobile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '一个简单的例子',
            ),
            const SizedBox(height: 10),
            Text(
              userStore.user?.name ?? "无",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final user = CreateUserRequest(
                  id: 111,
                  name: "marlon",
                  email: "marlon@126.com",
                );

                final (isOk, errorText) = await useUser.create(user);
                if (!isOk) {
                  ToastUtils.showToast(errorText);
                  return;
                }

                print("创建用户为：${userStore.user?.toJson()}");
              },
              child: const Text('创建用户'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final currentUser = userStore.user;
                if (currentUser.isEmpty) {
                  ToastUtils.showToast("current user is empty");
                  return;
                }
                final user = UpdateUserRequest(
                  id: currentUser!.id!,
                  name: "marlon-2",
                  email: "marlon@163.com",
                );

                print("更新前用户为：${userStore.user?.toJson()}");
                userStore.user = await useUser.update(user);
                print("更新用户为：${userStore.user?.toJson()}");
              },
              child: const Text('更新用户'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("当前用户：${userStore.user?.toJson()}");
              },
              child: const Text('获取用户'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                userStore.clear();
                print("当前用户：${userStore.user?.toJson()}");
              },
              child: const Text('删除用户'),
            ),
          ],
        ),
      ),
    );
  }
}
