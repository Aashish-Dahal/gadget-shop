import 'package:flutter/material.dart' show Color, MaterialColor;

class AppColors {
  static MaterialColor primary =
      MaterialColor(primaryColor.value, const <int, Color>{
    50: Color(0xFFFFF3E0),
    100: Color(0xFFFFE0B2),
    200: Color(0xFFFFCC80),
    300: Color(0xFFFFB74D),
    400: Color(0xFFFFA726),
    500: primaryColor,
    600: Color(0xFFFB8C00),
    700: Color(0xFFF57C00),
    800: Color(0xFFEF6C00),
    900: Color(0xFFE65100),
  });
  static const Color primaryColor = Color(0xFFfa5002);
  static const creamColor = Color.fromARGB(255, 246, 247, 248);
  static const Color blueColor = Color(0xFF185778);
  static const Color borderColor = Color(0xffebf0f6);
  static const Color fillColor = Color(0xfff7faff);
  static const Color cardColor = Color(0xfff8efea);
}
