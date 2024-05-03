/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-04-29 09:42:15
 */
import 'package:dio/dio.dart';

class ApiCancel extends Interceptor {
  static final Map<String, CancelToken> _cancelTokens = {};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final key = "${options.method} ${options.uri.toString()}";

    // 检查并取消之前的相同请求
    _cancelPreviousRequest(key);

    // 创建新的CancelToken并保存
    _cancelTokens[key] = CancelToken();

    // 设置当前请求的CancelToken
    options.cancelToken = _cancelTokens[key];

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // 请求完成后移除对应的CancelToken
    _removeCancelTokens(response.requestOptions);

    // // 检测登录token是否失效，失效退出并跳转到登录页面
    // if (response.data is Map &&
    //     response.data["msg"] == "UnAuthorization" &&
    //     !GlobalStore.appStoreCache.isLoginPage) {
    //   final context = NavigatorUtil.navigatorContext;
    //   if (context.mounted) {
    //     final appStore = context.read<AppStore>();
    //     appStore.logout();
    //     NavigatorUtil.clearStackAndReplaceNamed(RouteName.login);
    //   }
    // }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // 请求出错后移除对应的CancelToken
    _removeCancelTokens(err.requestOptions);

    /// 如果是手动取消请求类型，resolve回去
    /// 这么做的原因是避免控制台进行logger
    if (err.type == DioExceptionType.cancel) {
      return handler.resolve(Response(
        data: null,
        requestOptions: err.requestOptions,
      ));
    }

    super.onError(err, handler);
  }

  // 取消之前的相同请求
  static void _cancelPreviousRequest(String key) {
    if (_cancelTokens.containsKey(key)) {
      final CancelToken? cancelToken = _cancelTokens[key];
      if (cancelToken != null && !cancelToken.isCancelled) {
        cancelToken.cancel("Cancelled previous request: $key");
      }
      _cancelTokens.remove(key);
    }
  }

  // 根据key移除_cancelTokens
  static void _removeCancelTokens(RequestOptions options) {
    final key = "${options.method} ${options.uri.toString()}";
    _cancelTokens.remove(key);
  }
}
