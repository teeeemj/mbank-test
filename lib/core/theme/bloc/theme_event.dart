part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.get() = _Get;
  const factory ThemeEvent.set({required AppThemeMode mode}) = _Set;
}
