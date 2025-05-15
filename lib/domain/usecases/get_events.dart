import 'package:dartz/dartz.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';
import 'package:mbank_test_calendar/core/error/failures.dart';
import 'package:mbank_test_calendar/domain/repositories/event_repository.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class EventParams {
  final DateTime startDate;
  final DateTime? endDate;

  EventParams({required this.startDate, this.endDate});
}

class GetEvents implements UseCase<List<Event>, EventParams> {
  final EventRepository repository;

  GetEvents(this.repository);

  @override
  Future<Either<Failure, List<Event>>> call(EventParams params) async {
    if (params.endDate != null) {
      final diffBtwDays = params.endDate!.difference(params.startDate).inDays;
      if (diffBtwDays < 7) {
        return Left(InvalidDateRangeFailure('Range must be at least 7 days'));
      }
    }
    return repository.getEvents(
      startDate: params.startDate,
      endDate: params.endDate,
    );
  }
}
