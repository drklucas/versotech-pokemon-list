import 'package:flutter/material.dart';

class AppColors {
  static const int _backgroundGreen = 0xFFBACCAE;

  static const MaterialColor backgroundGreen = MaterialColor(
    _backgroundGreen,
    <int, Color>{
      50: Color(0xFFF3F6F3),
      100: Color(0xFFDDE2DD),
      200: Color(0xFFC7CEC7),
      300: Color(0xFFB1BAB1),
      400: Color(0xFFA4B0A4),
      500: Color(_backgroundGreen),
      600: Color(0xFF97A797),
      700: Color(0xFF899E89),
      800: Color(0xFF7C947C),
      900: Color(0xFF6E8B6E),
    },
  );

  static const int _greyGreenPrimaryValue = 0xFF83A06F;

  static const MaterialColor greyGreen = MaterialColor(
    _greyGreenPrimaryValue,
    <int, Color>{
      50: Color(0xFFE2E7DB),
      100: Color(0xFFD1D8C7),
      200: Color(0xFFBFC4B4),
      300: Color(0xFFADB09F),
      400: Color(0xFF9B9B8B),
      500: Color(_greyGreenPrimaryValue),
      600: Color(0xFF707D54),
      700: Color(0xFF5E6A40),
      800: Color(0xFF4C573C),
      900: Color(0xFF3A4532),
    },
  );

  static const int _greenPrimaryValue = 0xFF4C7430;

  static const MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFE4EBDA),
      100: Color(0xFFBFD3A3),
      200: Color(0xFF99BA6C),
      300: Color(0xFF73A235),
      400: Color(0xFF5E8C20),
      500: Color(_greenPrimaryValue),
      600: Color(0xFF446B1B),
      700: Color(0xFF3A5918),
      800: Color(0xFF304615),
      900: Color(0xFF1E2E0D),
    },
  );

  static const int _greenSecondaryPrimaryValue = 0xFF83A06F;

  static const MaterialColor greenSecondary = MaterialColor(
    _greenSecondaryPrimaryValue,
    <int, Color>{
      50: Color(0xFFE2E7DB),
      100: Color(0xFFB0BBA3),
      200: Color(0xFF7E896B),
      300: Color(0xFF4C6643),
      400: Color(0xFF33522B),
      500: Color(_greenSecondaryPrimaryValue),
      600: Color(0xFF2D4925),
      700: Color(0xFF243D1F),
      800: Color(0xFF1B3119),
      900: Color(0xFF0D1E0D),
    },
  );

  static const MaterialColor mainAppColor = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFE4EBDA),
      100: Color(0xFFBFD3A3),
      200: Color(0xFF99BA6C),
      300: Color(0xFF73A235),
      400: Color(0xFF5E8C20),
      500: Color(_greenPrimaryValue),
      600: Color(0xFF446B1B),
      700: Color(0xFF3A5918),
      800: Color(0xFF304615),
      900: Color(0xFF1E2E0D),
    },
  );

  static Color grey = Color.fromARGB(255, 136, 135, 135);

  static Color lightGrey = Color.fromARGB(255, 186, 186, 186);
}
