/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-06-20 20:16:33
 */
import 'package:flutter/material.dart';

extension SpacingBuildContextExtension on BuildContext {
  /// 默认尺寸 16
  double get spacing => 16;

  /// 最大尺寸 48
  double get spacingXXL => 48;

  /// 超大尺寸 32
  double get spacingXL => 32;

  /// 大尺寸 24
  double get spacingLG => 24;

  /// 中大尺寸 20
  double get spacingMD => 20;

  /// spacingMS 16
  double get spacingMS => 16;

  /// 中小尺寸 12
  double get spacingSM => 12;

  /// 小尺寸 8
  double get spacingXS => 8;

  /// 最小尺寸 4
  double get spacingXXS => 4;
}
