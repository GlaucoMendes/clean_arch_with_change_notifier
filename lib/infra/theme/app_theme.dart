import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pilar_mobile_case/infra/theme/app_colors.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    textTheme: GoogleFonts.ralewayTextTheme(),
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.primary,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.primary),
      ),
    ),
  );
}

/* MaterialStateProperty.resolveWith<Color>((states) {
        Color color = cor;
        if (states.contains(MaterialState.disabled)) color = cor;
        return color;
      }) */
