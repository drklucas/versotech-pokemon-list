import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    primaryColor: AppColors.mainAppColor,
     colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.mainAppColor,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColors.mainAppColor,
        ),
    appBarTheme: AppBarTheme(
      titleTextStyle: const TextStyle(fontSize: 18),
      color: AppColors.mainAppColor,
      foregroundColor: Colors.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: AppColors.mainAppColor,
    ),
    useMaterial3: true,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 14,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 13,
      ),
      titleLarge: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
  );

  static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
          offset: const Offset(0, 2),
          blurRadius: 6,
          color: Colors.grey.shade200)
    ],
  );
}
