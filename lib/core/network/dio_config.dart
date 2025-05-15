import 'package:dio/dio.dart';
import 'package:mbank_test_calendar/core/constants/app_constants.dart';

class DioConfig {
  static Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        receiveTimeout: const Duration(milliseconds: 60000),
        connectTimeout: const Duration(milliseconds: 60000),
        sendTimeout: const Duration(milliseconds: 60000),
      ),
    );

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );

    return dio;
  }
}
