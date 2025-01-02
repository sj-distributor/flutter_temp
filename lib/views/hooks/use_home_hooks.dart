/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-08-14 21:14:10
 */
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../abstracts/index.dart';
import '../../applications/index.dart';
import '../../utils/index.dart';

/// Home Hooks
class UseHomeHooks {
  final BuildContext context;

  late final IUserService userService;
  late final IUserStore userStore;
  late final IAppStore appStore;
  late final UserUseCase user;

  /// Home Hooks
  UseHomeHooks(this.context) {
    // Service
    userService = context.read<IUserService>();

    // Store
    userStore = context.watch<IUserStore>();
    appStore = context.watch<IAppStore>();

    // User用例
    user = UserUseCase(
      userService: userService,
      userStore: userStore,
    );
  }

  /// 切换多语言
  void handleLanguageToggle() {
    // 这里只是简单的例子
    NavigatorUtils.instance.refreshCurrentRoute();
    appStore.lang = appStore.lang == "en" ? "zh_TW" : "en";
  }
}
