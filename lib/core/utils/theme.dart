import 'package:flutter/material.dart';
import 'package:tanda/core/utils/app_colors.dart';

class AppThem {
  static _border([Color color = AppColors.backgroundColor]) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      );
  static final appThemeMode = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.backgroundColor,centerTitle: true),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey[200],
      filled: true,
      contentPadding: const EdgeInsets.all(20),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(AppColors.accentColor),
      errorBorder: _border(Colors.redAccent),
    ),
  );
}
