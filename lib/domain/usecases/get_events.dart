import 'package:dartz/dartz.dart';
import 'package:mbank_test_calendar/core/usecases/usecase.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';
import 'package:mbank_test_calendar/core/error/failures.dart';
import 'package:mbank_test_calendar/domain/repositories/event_repository.dart';

class EventParams {
  final DateTime startDate;
  final DateTime? endDate;

  EventParams({required this.startDate, this.endDate});

  Either<Failure, bool> validate() {
    if (endDate != null) {
      final diffBtwDays = endDate!.difference(startDate).inDays;
      if (diffBtwDays < 7) {
        return const Left(
          InvalidDateRangeFailure('Диапазон должен быть не менее 7 дней'),
        );
      }
    }

    return const Right(true);
  }
}

class GetEvents implements UseCase<List<Event>, EventParams> {
  final EventRepository repository;

  GetEvents(this.repository);

  @override
  Future<Either<Failure, List<Event>>> call(EventParams params) async {
    final validationResult = params.validate();
    if (validationResult.isLeft()) {
      return validationResult.fold(
        (failure) => Left(failure),
        (_) => throw UnimplementedError(),
      );
    }

    return repository.getEvents(
      startDate: params.startDate,
      endDate: params.endDate,
    );
  }
}
