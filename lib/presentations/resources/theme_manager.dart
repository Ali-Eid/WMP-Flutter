import 'package:flutter/material.dart';

class FontConstants {
  static const String fontFamily = "";
}

ThemeData lightTheme() {
  return ThemeData(
    colorSchemeSeed: const Color(0xFF8A1538),
    brightness: Brightness.light,
    useMaterial3: true,
  );
}

ThemeData darkTheme() {
  return ThemeData(
    colorSchemeSeed: const Color(0xFF8A1538),
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}

enum ThemeDataType { light, dark }

extension ThemeDataValueExtension on ThemeData {
  String getValue() {
    if (isDarkTheme) {
      return ThemeDataType.dark.toString();
    } else {
      return ThemeDataType.light.toString();
    }
  }
}

extension ThemeDataTypeExtension on ThemeData {
  bool get isDarkTheme {
    return brightness == Brightness.dark;
  }
}
