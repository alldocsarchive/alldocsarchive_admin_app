import 'package:alldocsarchive_admin_app/src/themes/text_theme.dart';
import 'package:flutter/material.dart';

/// Light theme
class LightTheme {
  /// ThemeData for Light theme
  static ThemeData data = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFF2672E),
      primary: const Color(0xFFF2672E),
      onPrimary: Colors.white,
      background: const Color(0xFFEEEEEE),
    ),
    textTheme: textTheme,
  ).copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      actionsIconTheme: IconThemeData(
        color: Color(0xff555555),
      ),
      foregroundColor: Colors.black,
    ),
  );
}
