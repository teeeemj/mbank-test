import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mbank_test_calendar/core/local_storage/storage.dart';
import 'package:mbank_test_calendar/core/theme/app_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
    : super(const ThemeState.initial(themeMode: AppThemeMode.system)) {
    on<_Get>((event, emit) {
      final resp = prefs.getAppTheme();
      emit(ThemeState.loaded(themeMode: resp));
    });
    on<_Set>((event, emit) {
      prefs.setAppTheme(event.mode);
      emit(ThemeState.loaded(themeMode: event.mode));
    });
  }

  final prefs = Storage();
}
