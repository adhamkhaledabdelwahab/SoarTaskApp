import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:soar_task_app/src/core/network/error_model/error_model.dart';

class ApiErrorHandler {
  static ErrorModel getError(error) {
    log("Api Error Handler");
    ErrorModel errorDescription = ErrorModel(
      success: false,
      message: 'Unexpected error occurred',
    );
    log("ApiErrorHandler  error $error ${error.runtimeType}");
    if (error is Exception) {
      try {
        if (error is DioError && error.response?.data is Map<String, dynamic>) {
          ErrorModel errorRes = ErrorModel.fromJson(
              error.response!.data! as Map<String, dynamic>);
          errorDescription = errorRes;
        }
      } catch (e) {
        errorDescription = ErrorModel(
          success: false,
          message: e.toString(),
        );
      }
    }
    log(errorDescription.toJson().toString());
    return errorDescription;
  }
}
