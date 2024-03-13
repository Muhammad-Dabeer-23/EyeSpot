import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class EChipTheme {
  EChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: EColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: EColors.black),
    selectedColor: EColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: EColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: EColors.darkerGrey,
    labelStyle: TextStyle(color: EColors.white),
    selectedColor: EColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: EColors.white,
  );
}
