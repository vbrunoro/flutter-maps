import 'package:flutter/material.dart';
import 'package:flutter_maps/theme/app_colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      primaryColor: AppColors.white,
      textTheme: const TextTheme(
        displaySmall: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        headlineMedium: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        headlineSmall: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
          fontSize: 16,
        ),
        titleLarge: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
      ),
    );
  }
}
