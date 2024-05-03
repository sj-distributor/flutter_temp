/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-29 09:42:15
 */
import 'package:dio/dio.dart';

import '../../utils/toast_utils.dart';

class ApiLogger extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String? errMessage;

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        break;
      case DioExceptionType.sendTimeout:
        break;
      case DioExceptionType.receiveTimeout:
        break;
      case DioExceptionType.badResponse:
        final statusCode = err.response?.statusCode;
        final statusMessage = err.response?.statusMessage;
        errMessage = "$statusCode - $statusMessage";
        break;
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        break;
      default:
    }

    bool showToast = err.requestOptions.extra["showErrorToast"] ?? true;

    if (errMessage != "" && showToast) {
      ToastUtils.showToast(
        errMessage!,
        duration: const Duration(milliseconds: 5000),
      );
    }

    super.onError(err, handler);
  }
}
