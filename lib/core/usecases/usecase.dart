import 'package:dartz/dartz.dart';
import 'package:mbank_test_calendar/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
