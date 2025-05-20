import 'package:dio/dio.dart';
import 'failures.dart';

abstract class ErrorHandler {
  Failure handleError(dynamic error);
}

class ErrorHandlerImpl implements ErrorHandler {
  @override
  Failure handleError(dynamic error) {
    if (error is DioException) {
      return _handleDioError(error);
    } else if (error is FormatException) {
      return ServerFailure('Format Exception: ${error.message}');
    } else if (error is Failure) {
      return error;
    } else {
      return ServerFailure(error.toString());
    }
  }

  Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure('Connection timeout');
      case DioExceptionType.sendTimeout:
        return const ServerFailure('Send timeout');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure('Receive timeout');
      case DioExceptionType.badCertificate:
        return const ServerFailure('Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure('Bad response: ${error.response?.statusCode}');
      case DioExceptionType.cancel:
        return const ServerFailure('Request cancelled');
      case DioExceptionType.connectionError:
        return const ServerFailure('Connection error');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown error: ${error.message}');
    }
  }
}
