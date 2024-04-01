import 'package:flutter/material.dart';
import 'package:my_app/theme.dart';

ThemeData getAppThemeData() {
  final baseTheme = ThemeData.light(); // Базовая тема

  return baseTheme.copyWith(
    textTheme: baseTheme.textTheme.copyWith(
        bodyMedium: const TextStyle(
          fontFamily: 'SourceSansPro',
          fontWeight: FontWeight.w400,
          fontSize: 15.0,
          height: 1.2,
          color: Colors.black,
        ),
        bodyLarge: const TextStyle(
          fontFamily: 'DrukCyr',
          fontWeight: FontWeight.w700,
          fontSize: 40.0,
          height: 1.05,
          letterSpacing: 0.02 * 40, // Межбуквенное расстояние, 2% от 40px
          color: Colors.black,
        ),
        titleMedium: const TextStyle(
          fontFamily: 'DrukCyr',
          fontWeight: FontWeight.w700,
          fontSize: 31.55,
          height: 1.273,
          color: Colors.black,
        )),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(width: 0.5, color: AppThemeColor.blueColor),
      ),
      hintStyle: TextStyle(
        fontFamily: 'SourceSansPro',
        fontSize: 14,
        color: AppThemeColor.gris,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        borderSide: BorderSide(
          width: 0.5,
          color: AppThemeColor.gris,
        ),
      ),
    ),
    // Другие настройки темы здесь, если необходимо
  );
}
