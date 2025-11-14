import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../theme/widget_themes/appbar_theme.dart';
import '../theme/widget_themes/bottom_sheet_theme.dart';
import '../theme/widget_themes/checkbox_theme.dart';
import '../theme/widget_themes/chip_theme.dart';
import '../theme/widget_themes/elevated_button_theme.dart';
import '../theme/widget_themes/outlined_button_theme.dart';
import '../theme/widget_themes/text_field_theme.dart';
import '../theme/widget_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    disabledColor: ColorManager.grey,
    brightness: Brightness.light,
    primaryColor: ColorManager.primary,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    scaffoldBackgroundColor: ColorManager.white,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Urbanist',
    disabledColor: ColorManager.grey,
    brightness: Brightness.dark,
    primaryColor: ColorManager.primary,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    scaffoldBackgroundColor: ColorManager.white,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
