import 'package:dartz/dartz.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';
import 'package:mbank_test_calendar/core/error/failures.dart';

abstract class EventRepository {
  Future<Either<Failure, List<Event>>> getEvents({
    required DateTime startDate,
    DateTime? endDate,
  });
}
