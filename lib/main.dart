import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pilar_mobile_case/features/home/home_screen.dart';
import 'package:pilar_mobile_case/infra/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pilar Mobile Case',
      theme: AppTheme.light,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
