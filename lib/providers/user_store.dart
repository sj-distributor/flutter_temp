/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-27 10:49:32
 */

import 'package:flutter/material.dart';
import 'package:flutter_temp/abstracts/index.dart';

/// 实现用户缓存服务
class UserStore extends ChangeNotifier implements IUserStore {
  IUser? _user;

  @override
  IUser? get user => _user;

  @override
  set user(IUser? value) {
    if (value != _user) {
      _user = value;
      notifyListeners();
    }
  }

  @override
  void clear() {
    _user = null;
    notifyListeners();
  }
}
