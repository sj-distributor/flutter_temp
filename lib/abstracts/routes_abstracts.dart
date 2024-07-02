/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-07-02 14:13:59
 */
import 'package:flutter/material.dart';

abstract class BaseRoutes<T> {
  BuildContext? context;

  void init({required BuildContext childContext}) {
    context = childContext;
  }

  List<T> getRoutes();
}
