import 'package:flutter/material.dart';

class ColorManager {
  static const Color primaryColor = Color(0xFF6F1E51);
  static const Color white = Color(0xFFFFFFFF);
}

extension Hex16Color on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
