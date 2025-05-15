import 'package:get_it/get_it.dart';
import 'package:mbank_test_calendar/core/error/error_handler.dart';
import 'package:mbank_test_calendar/core/network/dio_config.dart';
import 'package:mbank_test_calendar/presentation/bloc/calendar_event_bloc.dart';
import '../../data/datasources/event_remote_data_source.dart';
import '../../data/repositories/event_repository_impl.dart';
import '../../domain/repositories/event_repository.dart';
import '../../domain/usecases/get_events.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton<ErrorHandler>(() => ErrorHandlerImpl());

  // BLoC / Presentation
  sl.registerFactory(() => CalendarEventBloc(getEvents: sl()));

  // Use cases / Application layer
  sl.registerLazySingleton(() => GetEvents(sl()));

  // Repositories
  sl.registerLazySingleton<EventRepository>(
    () => EventRepositoryImpl(remoteDataSource: sl(), errorHandler: sl()),
  );

  // Data sources
  sl.registerLazySingleton<EventRemoteDataSource>(
    () => EventRemoteDataSourceImpl(dio: sl()),
  );

  // External
  sl.registerLazySingleton(() => DioConfig.create());
}
