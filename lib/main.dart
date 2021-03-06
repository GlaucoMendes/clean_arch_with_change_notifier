import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_change_notifier/infra/theme/app_theme.dart';
import 'presentation/main_screen/main_screen.dart';

void main() {
  if (kIsWeb) {
    runApp(
      DevicePreview(
        builder: (context) => const MyApp(),
        devices: [...Devices.android.all, ...Devices.ios.all],
      ),
    );
  } else {
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Arch With Change Notifier',
      theme: AppTheme.light,
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
