/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-01 16:46:02
 */

// Entity
import 'package:flutter/material.dart';

abstract class IBaseEntity {
  int? id;
}

// Api接口
abstract class IBaseRequest {}

abstract class IBaseResponse {}

// Service
abstract class IBaseService {}

// Storage
abstract class IBaseStore extends ChangeNotifier {
  void clear();
}

// Utils
abstract class IBaseUtil {}
