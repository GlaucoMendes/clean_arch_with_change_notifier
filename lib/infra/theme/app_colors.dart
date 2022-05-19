import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static Color primary = const Color(0xFF230D3B);
}

extension AppColorsExtension on ColorScheme {
  Color get primary => AppColors.primary;
}
