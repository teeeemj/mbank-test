import 'package:get_it/get_it.dart';
import 'package:mbank_test_calendar/core/di/di_modules.dart';
import 'package:mbank_test_calendar/core/local_storage/storage.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  final storage = Storage();
  await storage.initialize();
  sl.registerLazySingleton<Storage>(() => storage);

  final modules = [
    CoreModule(),
    DataModule(),
    DomainModule(),
    PresentationModule(),
  ];

  for (final module in modules) {
    await module.register(sl);
  }
}
