part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial({required AppThemeMode themeMode}) =
      ThemeInitial;
  const factory ThemeState.loading({required AppThemeMode themeMode}) =
      ThemeLoading;
  const factory ThemeState.loaded({required AppThemeMode themeMode}) =
      ThemeLoaded;
}
