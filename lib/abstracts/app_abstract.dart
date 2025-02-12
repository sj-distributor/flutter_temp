/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-01 16:46:02
 */

import 'base_abstract.dart';

// Store
abstract class IAppStore<Locale> implements IBaseStore {
  late String lang;

  Locale get currentLocale;
}
