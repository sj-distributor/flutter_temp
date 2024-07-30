/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-05-24 14:06:48
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/common/l10n/gen/app_localizations.dart';

import '../constant.dart';

// 扩展BuildContext
extension BuildContextExtension on BuildContext {
  AppLocalizations get lang =>
      AppLocalizations.of(this) ??
      lookupAppLocalizations(const Locale(Constant.defaultLanguage));
}
