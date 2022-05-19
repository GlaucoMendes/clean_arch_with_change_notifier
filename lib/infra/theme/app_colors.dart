import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static Color primary = Color.fromARGB(255, 63, 22, 107);
}

extension AppColorsExtension on ColorScheme {
  Color get primary => AppColors.primary;
}
