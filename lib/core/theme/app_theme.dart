import 'package:flutter/material.dart';
import 'package:mbank_test_calendar/core/theme/app_colors.dart';

const String? fontFamily = null;

class AppTheme {
  static const _border = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.darkBlue,
      width: 1,
      // style: BorderStyle.none,
    ),
  );

  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: const Color(0xffE6ECFC),

      canvasColor: Colors.white,
      primaryColorDark: Colors.black,
      primaryColorLight: Colors.white,
      cardColor: AppColors.white,
      hintColor: AppColors.light.hintColor,
      highlightColor: Colors.white,
      primaryColor: AppColors.blue,
      dividerColor: Colors.black.withAlpha(13),
      shadowColor: Colors.grey.shade300,
      dividerTheme: DividerThemeData(
        color: Colors.black.withAlpha(13),
        space: 16,
      ),
      secondaryHeaderColor: AppColors.lightBlue,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(fontFamily: fontFamily, color: AppColors.text),
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16,
          color: AppColors.lightGrey,
        ),
        titleLarge: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 14,
          height: 21 / 14,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 11,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 19.36 / 16,
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
        ),
        headlineSmall: TextStyle(fontFamily: fontFamily, color: AppColors.text),
        labelMedium: TextStyle(
          fontFamily: fontFamily,
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 12,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.orange),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          textStyle: WidgetStateProperty.all(
            const TextStyle(
              color: Colors.white,
              fontFamily: fontFamily,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.4,
            ),
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFFFFFFF),
        selectedItemColor: AppColors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(
          color: AppColors.text,
          fontSize: 12,
          fontFamily: fontFamily,
        ),
        selectedLabelStyle: TextStyle(
          color: AppColors.blue,
          fontFamily: fontFamily,
          fontSize: 12,
        ),
      ),
      primaryIconTheme: const IconThemeData(color: AppColors.blue),
      inputDecorationTheme: InputDecorationTheme(
        border: _border,
        focusedBorder: _border,
        enabledBorder: _border,
        disabledBorder: _border,
        errorBorder: _border.copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: _border.copyWith(
          borderSide: const BorderSide(color: Colors.red),
        ),
        prefixIconColor: AppColors.light.inputIconColor,
        suffixIconColor: AppColors.light.inputIconColor,
        labelStyle: const TextStyle(
          color: AppColors.lightGrey,
          fontSize: 14,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          height: 21 / 14,
        ),
        floatingLabelStyle: const TextStyle(
          color: AppColors.blue,
          fontSize: 14,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          height: 21 / 14,
        ),
        hintStyle: TextStyle(
          color: AppColors.light.hintColor,
          fontSize: 16,
          letterSpacing: -0.4,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 18,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: WidgetStateProperty.all(AppColors.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: Colors.transparent, width: 0),
        ),
        overlayColor: WidgetStateProperty.all(AppColors.light.checkboxColor),
        side: BorderSide(color: AppColors.light.checkboxColor, width: 1.5),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color(0xFF0D0D0D),
      canvasColor: AppColors.dark.inputBg,
      dividerColor: Colors.white.withAlpha(13),
      dividerTheme: DividerThemeData(
        color: Colors.white.withAlpha(13),
        space: 16,
      ),
      primaryColorDark: Colors.white,
      primaryColorLight: AppColors.blueDark,
      cardColor: AppColors.blueDark,
      primaryColor: AppColors.blueDark,
      highlightColor: AppColors.dark.systemGrey,
      secondaryHeaderColor: AppColors.cardBgDark,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blueDark,
        ),
        displayMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blueDark,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blueDark,
        ),
        titleLarge: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.text,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blueDark,
        ),
        titleSmall: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blueDark,
        ),
        bodyLarge: TextStyle(fontFamily: fontFamily, color: AppColors.blackSec),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blackSec,
        ),
        bodySmall: TextStyle(fontFamily: fontFamily, color: AppColors.blackSec),
        headlineLarge: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blueDark,
        ),
        headlineMedium: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blueDark,
        ),
        headlineSmall: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.blueDark,
        ),
        labelMedium: TextStyle(
          fontFamily: fontFamily,
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.orangeDark),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          textStyle: WidgetStateProperty.all(
            const TextStyle(
              color: Colors.white,
              fontFamily: fontFamily,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.4,
            ),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.dark.lightVaweBlue,
        selectedItemColor: AppColors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(
          color: AppColors.blackSec,
          fontSize: 12,
          fontFamily: fontFamily,
        ),
        selectedLabelStyle: const TextStyle(
          color: AppColors.blueDark,
          fontFamily: fontFamily,
          fontSize: 12,
        ),
      ),
      primaryIconTheme: const IconThemeData(color: AppColors.blueDark),
      inputDecorationTheme: InputDecorationTheme(
        border: _border,
        focusedBorder: _border,
        enabledBorder: _border,
        errorBorder: _border,
        focusedErrorBorder: _border,
        fillColor: AppColors.dark.inputBg,
        prefixIconColor: AppColors.light.inputIconColor,
        suffixIconColor: AppColors.light.inputIconColor,
        labelStyle: const TextStyle(
          color: Color(0xFF000000),
          fontSize: 16,
          fontFamily: fontFamily,
          letterSpacing: -0.4,
        ),
        floatingLabelStyle: TextStyle(
          color: AppColors.light.hintColor,
          fontSize: 16,
          fontFamily: fontFamily,
          letterSpacing: -0.4,
        ),
        filled: true,
        hintStyle: TextStyle(
          color: AppColors.light.hintColor,
          fontSize: 16,
          letterSpacing: -0.4,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 18,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: WidgetStateProperty.all(AppColors.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: Colors.transparent, width: 0),
        ),
        overlayColor: WidgetStateProperty.all(AppColors.light.checkboxColor),
        side: BorderSide(color: AppColors.light.checkboxColor, width: 1.5),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}

enum AppThemeMode { light, dark, system }

extension AppThemeModeExtension on AppThemeMode {
  ThemeMode get title {
    if (this == AppThemeMode.light) {
      return ThemeMode.light;
    } else if (this == AppThemeMode.dark) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }
}
