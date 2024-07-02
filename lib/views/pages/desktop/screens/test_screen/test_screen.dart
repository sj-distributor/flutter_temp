/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-24 20:01:23
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/routes.dart';
import 'package:flutter_temp/utils/index.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("currentRoute ${Routes.instance.currentRoute?.title}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Page"),
        leading: const SizedBox.shrink(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                NavigatorUtils.push(Routes.home);
              },
              child: const Text('go to home'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                ToastUtils.showToast("message");
              },
              child: const Text('toast'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                LoadingUtils.loading();
                await Future.delayed(const Duration(seconds: 2));
                LoadingUtils.dismiss();
              },
              child: const Text('loading'),
            ),
          ],
        ),
      ),
    );
  }
}
