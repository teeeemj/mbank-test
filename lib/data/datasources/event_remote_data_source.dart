import 'package:dio/dio.dart';
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
      Map<String, dynamic> queryParams = {
        'start_date': DateFormatter.formatDate(startDate),
      };

      if (endDate != null) {
        queryParams['end_date'] = DateFormatter.formatDate(endDate);
      }
      final response = await dio.get(
        '/api/test-task',
        queryParameters: queryParams,
      );
      if (response.statusCode == 200) {
        final List<dynamic> eventsJson = response.data;
        return eventsJson.map((json) => EventRespModel.fromJson(json)).toList();
      } else {
        throw ServerFailure('Failed to fetch events: ${response.statusCode}');
      }
    } on DioException {
      rethrow;
    } catch (e) {
      throw ServerFailure('An unexpected error occurred: ${e.toString()}');
    }
  }
}
