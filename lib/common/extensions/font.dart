/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-06-19 10:52:00
 */
import 'package:flutter/material.dart';

extension FontBuildContextExtension on BuildContext {
  /// 默认字号 14
  double get fontSize => 14.0;

  /// h1 标签所使用的字号 38.0
  double get fontSizeHeading1 => 38.0;

  /// h2 标签所使用的字号 30.0
  double get fontSizeHeading2 => 30.0;

  /// h3 标签使用的字号 24.0
  double get fontSizeHeading3 => 24.0;

  /// h4 标签使用的字号 20.0
  double get fontSizeHeading4 => 20.0;

  /// h5 标签使用的字号号 16.0
  double get fontSizeHeading5 => 16.0;

  /// 大号字体大小 16.0
  double get fontSizeLG => 16.0;

  /// 小号字体大小 12.0
  double get fontSizeSM => 12.0;

  /// 超大号字体大小 20.0
  double get fontSizeXL => 20.0;

  /// 文本行高 1.5714285714285714
  double get lineHeight => 1.5714285714285714;

  /// h1 标签所使用的行高 1.2105263157894737
  double get lineHeightHeading1 => 1.2105263157894737;

  /// h2 标签所使用的行高 1.2666666666666666
  double get lineHeightHeading2 => 1.2666666666666666;

  /// h3 标签所使用的行高 1.3333333333333333
  double get lineHeightHeading3 => 1.3333333333333333;

  /// h4 标签所使用的行高 1.4
  double get lineHeightHeading4 => 1.4;

  /// h5 标签所使用的行高 1.5
  double get lineHeightHeading5 => 1.5;

  /// 大型文本行高 1.5
  double get lineHeightLG => 1.5;

  /// 小型文本行高 1.6666666666666667
  double get lineHeightSM => 1.6666666666666667;
}
