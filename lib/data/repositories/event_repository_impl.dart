import 'package:dartz/dartz.dart';
import 'package:mbank_test_calendar/core/error/error_handler.dart';
import 'package:mbank_test_calendar/data/datasources/remote/event_remote_data_source.dart';
import 'package:mbank_test_calendar/data/models/event_resp_model.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';
import 'package:mbank_test_calendar/core/error/failures.dart';
import 'package:mbank_test_calendar/domain/repositories/event_repository.dart';

class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource remoteDataSource;
  final ErrorHandler errorHandler;

  EventRepositoryImpl({
    required this.remoteDataSource,
    required this.errorHandler,
  });

  @override
  Future<Either<Failure, List<Event>>> getEvents({
    required DateTime startDate,
    DateTime? endDate,
  }) async {
    try {
      final eventModels = await remoteDataSource.getEvents(
        startDate: startDate,
        endDate: endDate,
      );
      final events = _mapToEntities(eventModels);
      return Right(events);
    } catch (e) {
      return Left(errorHandler.handleError(e));
    }
  }

  List<Event> _mapToEntities(List<EventRespModel> models) {
    return models.map((model) => model.toEntity()).toList();
  }
}
