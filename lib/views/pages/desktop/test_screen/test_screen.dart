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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Test Page"),
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
          ],
        ),
      ),
    );
  }
}
