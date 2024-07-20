import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:soar_task_app/src/core/network/endpoints.dart';
import 'package:soar_task_app/src/core/utils/log_util.dart';

class DioInterceptor extends Interceptor {
  String _apiKeyMD5(int ts) {
    var bytes = utf8.encode(
      "$ts${EndPoints.privateApikey}${EndPoints.publicApikey}",
    ); // data being hashed

    var digest = md5.convert(bytes);
    return digest.toString();
  }

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
    final ts = DateTime.now().millisecondsSinceEpoch;
    options.queryParameters["apikey"] = EndPoints.publicApikey;
    options.queryParameters["hash"] = _apiKeyMD5(ts);
    options.queryParameters["ts"] = ts;
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
