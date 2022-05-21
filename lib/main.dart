import 'package:flutter/material.dart';
import 'package:pilar_mobile_case/infra/theme/app_theme.dart';

import 'presentation/main_screen/main_screen.dart';

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
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
