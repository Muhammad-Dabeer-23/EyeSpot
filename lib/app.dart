import 'package:eyespot/features/authentication/screens/on_boarding/onboarding.dart';
import 'package:eyespot/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(

      themeMode: ThemeMode.dark,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      home: const OnBoarding(),
    );
  }
}
