import 'package:dio/dio.dart';

class DioConfig {
  static Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://test-task-app-alpha.vercel.app',
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
