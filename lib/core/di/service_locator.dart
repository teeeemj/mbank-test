import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mbank_test_calendar/core/error/error_handler.dart';
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
  sl.registerLazySingleton(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://test-task-app-alpha.vercel.app',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
      ),
    );
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
    return dio;
  });
}
