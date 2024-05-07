/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-07 21:22:18
 */
import 'package:flutter_temp/views/pages/desktop/home_screen/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test/widgets/app_widget.dart';

void main() {
  testWidgets('home screen integration test', (tester) async {
    // Load app widget.
    await tester.pumpWidget(const TestAppWidget(
      child: HomeScreen(),
    ));

    expect(find.text('一个简单的例子'), findsOneWidget);
    expect(find.text('marlon'), findsNothing);
    expect(find.text('创建用户'), findsOneWidget);

    // 创建用户
    await Future.delayed(const Duration(milliseconds: 1000));
    await tester.tap(find.text('创建用户'));
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('marlon'), findsOneWidget);

    // 更新用户
    await Future.delayed(const Duration(milliseconds: 1000));
    await tester.tap(find.text('更新用户'));
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('marlon-2'), findsOneWidget);

    // 获取用户
    await Future.delayed(const Duration(milliseconds: 1000));
    await tester.tap(find.text('获取用户'));
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('marlon-2'), findsOneWidget);

    // 删除用户
    await Future.delayed(const Duration(milliseconds: 1000));
    await tester.tap(find.text('删除用户'));
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('marlon-2'), findsNothing);

    await Future.delayed(const Duration(milliseconds: 2000));
  });
}
