import 'package:dio/dio.dart';
import 'package:soar_task_app/src/core/utils/log_util.dart';

class DioInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logSuccess("onResponse Starts: ==========================================");
    logSuccess(
      "Url: ${response.requestOptions.baseUrl}/${response.requestOptions.path}",
    );
    logSuccess("data: ${response.requestOptions.data}");
    logSuccess("query: ${response.requestOptions.queryParameters}");
    logSuccess("response status code: ${response.statusCode}");
    logSuccess("response data: ${response.data}");
    logSuccess("onResponse Ends: ===========================================");
    super.onResponse(response, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logWarning(
      "onRequest Starts: ===========================================",
    );
    logWarning("Url: ${options.baseUrl}${options.path}");
    logWarning("headers: ${options.headers}");
    logWarning("data: ${options.data}");
    logWarning("query: ${options.queryParameters}");
    logWarning(
      "onRequest Ends: ============================================",
    );
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logError("onError Starts: ==========================================");
    logError(
      "Url: ${err.requestOptions.baseUrl}/${err.requestOptions.path}",
    );
    logError("data: ${err.requestOptions.data}");
    logError("query: ${err.requestOptions.queryParameters}");
    logError("response status code: ${err.response?.statusCode}");
    logError("response data: ${err.response?.data}");
    logError("onError Ends: ===========================================");
    super.onError(err, handler);
  }
}
