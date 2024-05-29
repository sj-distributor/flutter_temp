/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-01 16:46:02
 */

import 'base_abstract.dart';

// Entity
abstract class IUser extends IBaseEntity {
  late String name;

  late String email;

  IUser.fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}

// Api相关
abstract class ICreateUserRequest extends IUser {
  ICreateUserRequest.fromJson(super.json) : super.fromJson();
}

abstract class ICreateUserResponse extends IUser {
  ICreateUserResponse.fromJson(super.json) : super.fromJson();
}

abstract class IUpdateUserRequest extends IUser {
  IUpdateUserRequest.fromJson(super.json) : super.fromJson();
}

abstract class IUpdateUserResponse extends IUser {
  IUpdateUserResponse.fromJson(super.json) : super.fromJson();
}

// Service
abstract class IUserService {
  Future<ICreateUserResponse?> create(ICreateUserRequest user);
  Future<IUpdateUserResponse?> update(IUpdateUserRequest user);
}

// Store
abstract class IUserStore implements IBaseStore {
  IUser? get user;
  set user(IUser? value);
}
