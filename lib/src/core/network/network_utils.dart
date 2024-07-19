import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:soar_task_app/src/core/network/error_model/error_model.dart';

import 'api_error_handler.dart';
import 'data_state.dart';

class NetworkUtils<T> {
  Future<DataState<T>> handleApiResponse(Future<HttpResponse<T>> function,
      {bool? ignoreResponse}) async {
    try {
      final httpResponse = await function;
      if ((httpResponse.response.statusCode == HttpStatus.ok) ||
          (httpResponse.response.statusCode == HttpStatus.created)) {
        if (ignoreResponse != null && ignoreResponse) {
          return DataSuccess(httpResponse.data);
        } else {
          if (httpResponse.response.data != null) {
            return DataSuccess(httpResponse.data);
          }
        }
      }
      return DataFailed(
        ApiErrorHandler.getError(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            requestOptions: RequestOptions(path: ''),
          ),
        ),
      );
    } on DioException catch (dioError) {
      ErrorModel? errorDescription =
          ErrorModel(success: false, message: dioError.message ?? "");
      try {
        if (dioError.response?.data != null) {
          ErrorModel? errorRes;
          if (dioError.response!.data! is String) {
            errorRes = ErrorModel.fromJson(
                jsonDecode(dioError.response!.data! as String));
          } else if (dioError.response!.data! is Map<String, dynamic>) {
            errorRes = ErrorModel.fromJson(dioError.response!.data);
          }
          if (errorRes?.message != null) {
            errorDescription = errorRes;
          }
        }
        return DataFailed(
          errorDescription ??
              ErrorModel(
                success: false,
                message: 'Unexpected error occurred',
              ),
        );
      } catch (e) {
        return DataFailed(
          errorDescription ??
              ErrorModel(
                success: false,
                message: dioError.message ?? "",
              ),
        );
      }
    } catch (e) {
      return DataFailed(ApiErrorHandler.getError(e));
    }
  }
}

class VoidResponse {
  VoidResponse();

  factory VoidResponse.fromJson(Map<String, dynamic>? json) => VoidResponse();
}
