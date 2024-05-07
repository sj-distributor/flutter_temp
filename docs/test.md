<!--
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-06 17:08:33
-->
## 常用断言类型

- 检查控件是否存在或不存在
```
expect(find.text('Hello'), findsOneWidget);         // 确保有一个具有指定文本的控件
expect(find.byType(ElevatedButton), findsNothing);  // 确保没有ElevatedButton控件
```

- 检查集合内容
```
expect(myList, contains('item'));   // 列表包含'item'
expect(myList, isEmpty);            // 列表为空
expect(myList, isNotEmpty);         // 列表非空
expect(myList, hasLength(3));       // 列表长度为3
```

- 检查布尔条件
```
expect(yourBooleanCondition, isTrue);   // 检查布尔条件是否为真
expect(yourValue, isFalse);             // 检查值是否为假

```

- 比较数值大小
```
expect(actualValue, lessThan(10));              // 实际值小于10
expect(actualValue, greaterThanOrEqualTo(5));   // 实际值大于或等于5
```

- 检查具体属性
```
expect(widget.color, Colors.red);  // 检查控件颜色是否为红色
expect(widget.isEnabled, isTrue);  // 检查控件是否启用
```

- 检查 Widget 的类型
```
expect(myWidget, isA<FlatButton>());  // 检查控件是否为FlatButton类型
```

- 检查控件是否出现在另一个控件之后
```
expect(find.text('Item 1'), findsOneWidget);
expect(find.text('Item 2'), findsOneWidget);
expect(find.text('Item 1').last, appearsBefore(find.text('Item 2').first));  // Item 1在Item 2之前出现
```

- 组合断言
```
expect(myValue, allOf([isNotNull, greaterThan(0)]));  // myValue非空且大于0
expect(myValue, anyOf([isNull, equals(0)]));          // myValue为空或等于0
```

- 异步断言
```
expectLater(futureValue, completes);            // 异步值处理完成
expectLater(stream, emitsInOrder([1, 2, 3]));   // 流按顺序发出1, 2, 3
```