import 'package:flutter/material.dart';

import 'app_pallete.dart';  // Corrected import statement

class AppTheme {
  static OutlineInputBorder _border([Color color = AppPalette.borderColor]) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 3,
    ),
    borderRadius: BorderRadius.circular(10),
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor:  AppPalette.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),  // Added parentheses
      focusedBorder: _border(AppPalette.gradient2),  // Added parentheses
    ),
  );
}