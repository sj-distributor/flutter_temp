/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-06-19 10:13:53
 */
import 'package:flutter/material.dart';

extension BorderBuildContextExtension on BuildContext {
  /// LG号圆角，用于组件中的一些大圆角，如 Card、Modal 等一些组件样式
  double get borderRadiusLG => 8.0;

  /// SM号圆角，用于组件小尺寸下的圆角，如 Button、Input、Select 等输入类控件在 small size 下的圆角
  double get borderRadiusSM => 4.0;

  /// XS号圆角，用于组件中的一些小圆角，如 Segmented 、Arrow 等一些内部圆角的组件样式中
  double get borderRadiusXS => 2.0;

  /// 默认圆角
  double get borderRadius => 6.0;
}
