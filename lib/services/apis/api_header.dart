/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-29 09:42:15
 */
import 'package:dio/dio.dart';

class ApiHeader extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.headers["Authorization"] = options.headers["Authorization"] ??
    //     "Bearer ${GlobalStore.appStoreCache.token}";

    super.onRequest(options, handler);
  }
}
