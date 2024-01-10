import 'package:bestdealsv2/bindings/general_bindings.dart';
import 'package:bestdealsv2/features/authentication/screens/login/login_screen.dart';
import 'package:bestdealsv2/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/constants/colors.dart';

/// ---- Use this class to setup themes, initial Bindings, any aimations and much
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),

      /// SHow Loader or Cicular Progress Indicator meanwhile Authencition Repository is deciding to show relevant screen.
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
