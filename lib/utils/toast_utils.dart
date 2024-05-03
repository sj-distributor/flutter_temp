import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ToastUtils {
  /// showToast
  static void showToast(
    // 显示内容
    String message, {
    // 显示时长
    Duration? duration,
    // 点击mask关闭
    bool clickMaskDismiss = false,
    // 是否穿透点击
    bool usePenetrate = true,
    // mask遮罩层颜色
    Color maskColor = Colors.transparent,
    // 对其方式
    Alignment alignment = Alignment.center,
    // 显示逻辑
    SmartToastType displayType = SmartToastType.onlyRefresh,
  }) {
    SmartDialog.showToast(
      message,
      displayTime: duration,
      clickMaskDismiss: clickMaskDismiss,
      usePenetrate: usePenetrate,
      maskColor: maskColor,
      alignment: alignment,
      displayType: displayType,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
