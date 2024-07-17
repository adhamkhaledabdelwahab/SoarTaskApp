import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/environment/environment_configurations.dart';
import 'package:soar_task_app/src/core/network/dio_interceptor.dart';

/// this class register the third party plugins
@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => EnvironmentsVariables.instance.configurations.baseUrl;

  @Named('Dio')
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) {
    final Dio dio = Dio(BaseOptions(baseUrl: url));
    dio.interceptors.add(DioInterceptor());
    return dio;
  }
}
