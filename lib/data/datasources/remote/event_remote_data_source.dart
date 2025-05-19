import 'package:dio/dio.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';
import 'package:mbank_test_calendar/core/utils/date_formatter.dart';
import 'package:mbank_test_calendar/data/models/event_resp_model.dart';
import 'package:mbank_test_calendar/core/error/failures.dart';

abstract class EventRemoteDataSource {
  Future<List<EventRespModel>> getEvents({
    required DateTime startDate,
    DateTime? endDate,
  });
}

class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final Dio dio;

  EventRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<EventRespModel>> getEvents({
    required DateTime startDate,
    DateTime? endDate,
  }) async {
    try {
      final queryParams = _buildQueryParams(startDate, endDate);
      final response = await dio.get(
        '/api/test-task',
        queryParameters: queryParams,
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw ServerFailure('DioException: ${e.message}');
    } catch (e) {
      throw ServerFailure('${AppStrings.unexpectedError} $e');
    }
  }

  Map<String, dynamic> _buildQueryParams(
    DateTime startDate,
    DateTime? endDate,
  ) {
    final queryParams = {'start_date': DateFormatter.formatDate(startDate)};
    if (endDate != null) {
      queryParams['end_date'] = DateFormatter.formatDate(endDate);
    }
    return queryParams;
  }

  List<EventRespModel> _handleResponse(Response response) {
    if (response.data is List) {
      return (response.data as List)
          .map((json) => EventRespModel.fromJson(json))
          .toList();
    } else {
      throw ServerFailure(AppStrings.invalidFormat);
    }
  }
}
