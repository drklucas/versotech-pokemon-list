import 'package:flutter/material.dart';

class AppColors {

  static const int _primaryValue = 0xFF334F7E;

  static const MaterialColor mainAppColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFBECADD),
      100: Color(0xFF96A9C8),
      200: Color(0xFF728EBB),
      300: Color(0xFF627FAE),
      400: Color(0xFF4F6B98),
      500: Color(_primaryValue),
      600: Color(0xFF334F7C),
      700: Color(0xFF243C63),
      800: Color(0xFF152A4B),
      900: Color(0xFF0E203E),
    },
  );
}
