import 'package:flutter/material.dart';

class AppColors {
  static final light = LightThemeColors();
  static final dark = DarkThemeColors();

  static const orange = Color(0xFFFC9F15);
  static const blackSec = Color(0xFF8A8A8E);
  static const greyMedium = Color(0xFFF8F5FE);
  static const Color grey = Colors.grey;
  static const Color black = Color(0xff000000);
  static const Color red = Colors.red;
  static const Color white = Colors.white;
  static const Color lightGrey = Color(0xff9EA1A8);
  static const Color blue = Color(0xff0866FF);
  static const Color darkBlue = Color(0xff034EA1);
  static const Color lightBlue = Color(0xff00ADEE);
  static const Color navyBlue = Color(0xff002734);
  static const Color primary = Color(0xffF5F932);
  static const Color secondaryColor = Color(0xff4B48CD);
  static const Color tertiaryColor = Color(0xff000000);
  static const Color logo1 = Color(0xffEB420E);
  static const Color logo2 = Color(0xff1F1F1F);
  static const Color logo3 = Color(0xff6330F4);
  static const Color notAttended = Color(0xffC1C1C1);
  static const Color attended = Color(0xff00A9DE);
  static const backButton = Color(0xff000000);
  static const lightWhite = Color(0xFFFCFDFF);
  static const text = Color(0xFF1E1E1E);
  static const Color blueGrad1 = Color(0xFF174193);
  static const Color blueGrad2 = Color(0xFF4285F4);
  static const Color blueGrad3 = Color(0xFF0053BF);
  static const Color blueGrad4 = Color(0xFF2F79D8);
  static const Color divider = Color(0xFFA3A5AE);
  static const Color grey1 = Color(0xFF7B7D83);
  static const Color arcBlue = Color(0xFF0047FF);
  static const Color lightTextBlue = Color(0xFF99CEFF);
  static const Color inputColor = Color(0xFFCDD1E3);
  static const Color textGrey = Color(0xFFB0B6CE);
  static const Color waiting = Color(0xFFFBBC05);
  static const Color ending = Color(0xFFD62828);
  static const Color bonus = Color(0xFF44D7C5);
  static const Color blackBg = Color(0xFF1E1E1E);
  static const Color primarySecond = Color(0xFF1943E6);
  static const Color textColor = Color(0xff7572D9);
  static const Color bottomColor = Color(0xff1A1B45);
  static const Color bottomBorder = Color(0xff888888);

  /// dark
  static const blueDark = Color(0xFF004996);
  static const orangeDark = Color(0xFFFCAA2E);
  static const cardBgDark = Color(0xFF0D1524);
  static const tabbar = Color(0x7676803D);
  static const containerDark = Color(0xFF2C2C2E);
  static const greyMediumDark = Color(0xFF323232);
}

class LightThemeColors {
  final scaffoldBg = const Color(0xFFF8F5FE);
  final inputIconColor = const Color(0xFFAEAEB2);
  final inputBg = Colors.white;
  final hintColor = const Color(0xFF8A8A8E);
  final checkboxColor = const Color(0xFFDADADA);
  final systemBlue = const Color(0xFF004996);
  final lightVaweBlue = const Color(0xFFF9F5FF);
  final doneColor = const Color(0xff208B4E);
  final systemGrey = const Color(0xFF636366);
}

class DarkThemeColors {
  final scaffoldBg = const Color(0xFF1A1A1A);
  final inputIconColor = AppColors.blue;
  final inputBg = const Color(0xFF1C1C1E);
  final hintColor = const Color(0xFF8A8A8E);
  final checkboxColor = const Color(0xFFDADADA);
  final systemBlue = AppColors.blueDark;
  final lightVaweBlue = const Color(0xFF0D0D0D);
  final doneColor = const Color(0xff208B4E);
  final systemGrey = const Color(0xFF1C1C1E);
}
