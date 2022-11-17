import 'package:alldocsarchive_admin_app/src/themes/text_theme.dart';
import 'package:flutter/material.dart';

/// Dark theme
class DarkTheme {
  /// ThemeData for Dark theme
  static ThemeData data = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFF2672E),
      brightness: Brightness.dark,
      background: const Color(0xFF121212),
      primary: const Color(0xFFF2672E),
      onPrimary: Colors.white,
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
