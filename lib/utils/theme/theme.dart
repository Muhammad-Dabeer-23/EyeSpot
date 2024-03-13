import 'package:eyespot/utils/constants/colors.dart';
import 'package:eyespot/utils/theme/custom_theme/appbar_theme.dart';
import 'package:eyespot/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:eyespot/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:eyespot/utils/theme/custom_theme/chip_theme.dart';
import 'package:eyespot/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:eyespot/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:eyespot/utils/theme/custom_theme/text_field_theme.dart';
import 'package:eyespot/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme {
  EAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ETextTheme.lightTextTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButton,
    chipTheme: EChipTheme.lightChipTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    inputDecorationTheme: ETextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ETextTheme.darkTextTheme,
    brightness: Brightness.dark,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: EColors.primary,
    ),
   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
     showUnselectedLabels: false,
     showSelectedLabels: false,
     


   ),
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButton,
    checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
    chipTheme: EChipTheme.darkChipTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    inputDecorationTheme: ETextFormFieldTheme.darkInputDecorationTheme,
  );
}
