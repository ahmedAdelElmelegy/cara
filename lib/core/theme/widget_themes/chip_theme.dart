import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    checkmarkColor: ColorManager.white,
    selectedColor: ColorManager.primary,
    disabledColor: ColorManager.grey.withValues(alpha: 0.4),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    labelStyle: const TextStyle(
      color: ColorManager.black,
      fontFamily: 'Urbanist',
    ),
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    checkmarkColor: ColorManager.white,
    selectedColor: ColorManager.primary,
    disabledColor: ColorManager.darkerGrey,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    labelStyle: TextStyle(color: ColorManager.white, fontFamily: 'Urbanist'),
  );
}
