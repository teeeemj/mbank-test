import 'package:get_it/get_it.dart';
import 'package:mbank_test_calendar/core/error/error_handler.dart';
import 'package:mbank_test_calendar/core/network/dio_config.dart';
import 'package:mbank_test_calendar/presentation/blocs/calendar_event_bloc/calendar_event_bloc.dart';
import '../../data/datasources/remote/event_remote_data_source.dart';
import '../../data/repositories/event_repository_impl.dart';
import '../../domain/repositories/event_repository.dart';
import '../../domain/usecases/get_events.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  await _initCore();
  await _initExternals();
  await _initDataLayer();
  await _initDomainLayer();
  await _initPresentationLayer();
}

///core init
Future<void> _initCore() async {
  sl.registerLazySingleton<ErrorHandler>(() => ErrorHandlerImpl());
}

/// externals init
Future<void> _initExternals() async {
  sl.registerLazySingleton(() => DioConfig.create());
}

/// data init
Future<void> _initDataLayer() async {
  // data sources
  sl.registerLazySingleton<EventRemoteDataSource>(
    () => EventRemoteDataSourceImpl(dio: sl()),
  );

  // repositories
  sl.registerLazySingleton<EventRepository>(
    () => EventRepositoryImpl(remoteDataSource: sl(), errorHandler: sl()),
  );
}

/// domain init
Future<void> _initDomainLayer() async {
  // use cases
  sl.registerLazySingleton(() => GetEvents(sl()));
}

/// presentation init
Future<void> _initPresentationLayer() async {
  // blocs
  sl.registerFactory(() => CalendarEventBloc(getEvents: sl()));
}
