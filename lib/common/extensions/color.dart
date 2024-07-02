/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-06-17 10:31:08
 */
import 'package:flutter/material.dart';

/// 自定义颜色
extension ColorBuildContextExtension on BuildContext {
  /// 默认背景
  Color get colorBgBase => const Color(0xFFffffff);

  /// 用于表示操作失败的颜色，如失败按钮、错误状态提示（Result）组件等
  Color get colorError => const Color(0xFFff4d4f);

  /// 品牌色是体现产品特性和传播理念最直观的视觉元素之一
  Color get colorPrimary => const Color(0xFF1677ff);

  /// 用于表示操作信息的 Token 序列，如 Alert 、Tag、 Progress 等组件都有用到该组梯度变量
  Color get colorInfo => colorPrimary;

  /// 控制超链接的颜色
  Color get colorLink => colorPrimary;

  /// 用于表示操作成功的
  Color get colorSuccess => const Color(0xFF52c41a);

  /// 用于表示操作警告的 Token 序列
  Color get colorWarning => const Color(0xFFfaad14);

  /// 控制毛玻璃容器的背景色，通常为透明色
  Color get colorBgBlur => Colors.transparent;

  /// 组件的容器背景色，#ffffff，例如：默认按钮、输入框等。务必不要将其与 `colorBgElevated` 混淆
  Color get colorBgContainer => const Color(0xFFffffff);

  /// 该色用于页面整体布局的背景色
  Color get colorBgLayout => const Color(0xFFf5f5f5);

  /// 浮层的背景蒙层颜色，用于遮罩浮层下面的内容
  Color get colorBgMask => const Color.fromRGBO(0, 0, 0, 0.45);

  /// 该色用于引起用户强烈关注注意的背景色，目前只用在 Tooltip 的背景色上
  Color get colorBgSpotlight => const Color.fromRGBO(0, 0, 0, 0.85);

  /// 默认使用的边框颜色, 用于分割不同的元素，例如：表单的分割线、卡片的分割线等
  Color get colorBorder => const Color(0xFFd9d9d9);

  /// 比默认使用的边框色要浅一级，此颜色和 colorSplit 的颜色一致。使用的是实色
  Color get colorBorderSecondary => const Color(0xFFf0f0f0);

  /// 错误色的深色激活态
  Color get colorErrorActive => const Color(0xFFd9363e);

  /// 错误色的浅色背景颜色
  Color get colorErrorBg => const Color(0xFFfff2f0);

  /// 错误色的浅色背景色激活态
  Color get colorErrorBgActive => const Color(0xFFffccc7);

  /// 错误色的浅色背景色悬浮态
  Color get colorErrorBgHover => const Color(0xFFfff1f0);

  /// 错误色的描边色
  Color get colorErrorBorder => const Color(0xFFffccc7);

  /// 错误色的描边色悬浮态
  Color get colorErrorBorderHover => const Color(0xFFffa39e);

  /// 错误色的深色悬浮态
  Color get colorErrorHover => const Color(0xFFff7875);

  /// 错误色的文本默认态
  Color get colorErrorText => const Color(0xFFff4d4f);

  /// 错误色的文本激活态
  Color get colorErrorTextActive => const Color(0xFFd9363e);

  /// 错误色的文本悬浮态
  Color get colorErrorTextHover => const Color(0xFFff7875);

  /// 信息色的深色激活态
  Color get colorInfoActive => const Color(0xFF0958d9);

  /// 信息色的浅色背景颜色
  Color get colorInfoBg => const Color(0xFFe6f4ff);

  /// 信息色的浅色背景色悬浮态
  Color get colorInfoBgHover => const Color(0xFFbae0ff);

  /// 信息色的描边色
  Color get colorInfoBorder => const Color(0xFF91caff);

  /// 信息色的描边色悬浮态
  Color get colorInfoBorderHover => const Color(0xFF69b1ff);

  /// 信息色的深色悬浮态
  Color get colorInfoHover => const Color(0xFF69b1ff);

  /// 信息色的文本默认态
  Color get colorInfoText => const Color(0xFF1677ff);

  /// 信息色的文本激活态
  Color get colorInfoTextActive => const Color(0xFF0958d9);

  /// 信息色的文本悬浮态
  Color get colorInfoTextHover => const Color(0xFF4096ff);

  /// 控制超链接被点击时的颜色
  Color get colorLinkActive => const Color(0xFF0958d9);

  /// 控制超链接悬浮时的颜色
  Color get colorLinkHover => const Color(0xFF69b1ff);

  /// 主色梯度下的深色激活态
  Color get colorPrimaryActive => const Color(0xFF0958d9);

  /// 主色浅色背景颜色，一般用于视觉层级较弱的选中状态
  Color get colorPrimaryBg => const Color(0xFFe6f4ff);

  /// 与主色浅色背景颜色相对应的悬浮态颜色
  Color get colorPrimaryBgHover => const Color(0xFFbae0ff);

  /// 主色梯度下的描边用色
  Color get colorPrimaryBorder => const Color(0xFF91caff);

  /// 主色梯度下的描边用色的悬浮态
  Color get colorPrimaryBorderHover => const Color(0xFF69b1ff);

  /// 主色梯度下的悬浮态
  Color get colorPrimaryHover => const Color(0xFF4096ff);

  /// 主色梯度下的文本颜色
  Color get colorPrimaryText => const Color(0xFF1677ff);

  /// 主色梯度下的文本激活态
  Color get colorPrimaryTextActive => const Color(0xFF0958d9);

  /// 主色梯度下的文本悬浮态
  Color get colorPrimaryTextHover => const Color(0xFF4096ff);

  /// 成功色的深色激活态
  Color get colorSuccessActive => const Color(0xFF389e0d);

  /// 成功色的浅色背景颜色
  Color get colorSuccessBg => const Color(0xFFf6ffed);

  /// 成功色浅色背景颜色
  Color get colorSuccessBgHover => const Color(0xFFd9f7be);

  /// 成功色的描边色
  Color get colorSuccessBorder => const Color(0xFFb7eb8f);

  /// 成功色的描边色悬浮态
  Color get colorSuccessBorderHover => const Color(0xFF95de64);

  /// 成功色的深色悬浮态
  Color get colorSuccessHover => const Color(0xFF95de64);

  /// 成功色的文本默认态
  Color get colorSuccessText => const Color(0xFF52c41a);

  /// 成功色的文本激活态
  Color get colorSuccessTextActive => const Color(0xFF389e0d);

  /// 成功色的文本悬浮态
  Color get colorSuccessTextHover => const Color(0xFF73d13d);

  /// 最深的文本色
  Color get colorText => const Color.fromRGBO(0, 0, 0, 0.88);

  /// 作为第二梯度的文本色
  Color get colorTextSecondary => const Color.fromRGBO(0, 0, 0, 0.65);

  /// 第三级文本色一般用于描述性文本
  Color get colorTextTertiary => const Color.fromRGBO(0, 0, 0, 0.45);

  /// 第四级文本色是最浅的文本色
  Color get colorTextQuaternary => const Color.fromRGBO(0, 0, 0, 0.25);

  /// 警戒色的深色激活态
  Color get colorWarningActive => const Color(0xFFd48806);

  /// 警戒色的浅色背景颜色
  Color get colorWarningBg => const Color(0xFFfffbe6);

  /// 警戒色的浅色背景色悬浮态
  Color get colorWarningBgHover => const Color(0xFFfff1b8);

  /// 警戒色的描边色
  Color get colorWarningBorder => const Color(0xFFffe58f);

  /// 警戒色的描边色悬浮态
  Color get colorWarningBorderHover => const Color(0xFFffd666);

  /// 警戒色的深色悬浮态
  Color get colorWarningHover => const Color(0xFFffd666);

  /// 警戒色的文本默认态
  Color get colorWarningText => const Color(0xFFfaad14);

  /// 警戒色的文本激活态
  Color get colorWarningTextActive => const Color(0xFFd48806);

  /// 警戒色的文本悬浮态
  Color get colorWarningTextHover => const Color(0xFFffc53d);

  /// 纯白色
  Color get colorWhite => const Color(0xFFffffff);

  /// 控制容器在禁用状态下的背景色
  Color get colorBgContainerDisabled => const Color.fromRGBO(0, 0, 0, 0.04);

  /// 控制文本描述字体颜色
  Color get colorTextDescription => const Color.fromRGBO(0, 0, 0, 0.45);

  /// 控制禁用状态下的字体颜色
  Color get colorTextDisabled => const Color.fromRGBO(0, 0, 0, 0.25);

  /// 控制标题字体颜色
  Color get colorTextHeading => const Color.fromRGBO(0, 0, 0, 0.88);
}
