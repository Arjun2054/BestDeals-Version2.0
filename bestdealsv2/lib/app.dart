import 'package:bestdealsv2/navigation_menu.dart';
import 'package:bestdealsv2/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// ---- Use this class to setup themes, initial Bindings, any aimations and much
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const NavigationMenu(),
    );
  }
}
