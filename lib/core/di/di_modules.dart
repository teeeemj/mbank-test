import 'package:get_it/get_it.dart';
import 'package:mbank_test_calendar/core/error/error_handler.dart';
import 'package:mbank_test_calendar/core/network/dio_config.dart';
import 'package:mbank_test_calendar/core/theme/bloc/theme_bloc.dart';
import 'package:mbank_test_calendar/data/datasources/remote/event_remote_data_source.dart';
import 'package:mbank_test_calendar/data/repositories/event_repository_impl.dart';
import 'package:mbank_test_calendar/domain/repositories/event_repository.dart';
import 'package:mbank_test_calendar/domain/usecases/get_events.dart';
import 'package:mbank_test_calendar/presentation/blocs/calendar_event_bloc/calendar_event_bloc.dart';

abstract class DIModule {
  Future<void> register(GetIt getIt);
}

class CoreModule implements DIModule {
  @override
  Future<void> register(GetIt getIt) async {
    getIt.registerLazySingleton<ErrorHandler>(() => ErrorHandlerImpl());
    getIt.registerLazySingleton(() => DioConfig.create());
  }
}

class DataModule implements DIModule {
  @override
  Future<void> register(GetIt getIt) async {
    getIt.registerLazySingleton<EventRemoteDataSource>(
      () => EventRemoteDataSourceImpl(dio: getIt()),
    );

    getIt.registerLazySingleton<EventRepository>(
      () =>
          EventRepositoryImpl(remoteDataSource: getIt(), errorHandler: getIt()),
    );
  }
}

class DomainModule implements DIModule {
  @override
  Future<void> register(GetIt getIt) async {
    getIt.registerLazySingleton(() => GetEvents(getIt()));
  }
}

class PresentationModule implements DIModule {
  @override
  Future<void> register(GetIt getIt) async {
    getIt.registerFactory(() => CalendarEventBloc(getEvents: getIt()));
    getIt.registerFactory(() => ThemeBloc()..add(const ThemeEvent.get()));
  }
}
