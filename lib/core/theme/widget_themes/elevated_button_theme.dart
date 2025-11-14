import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorManager.white,
      backgroundColor: ColorManager.primary,
      disabledForegroundColor: ColorManager.darkGrey,
      disabledBackgroundColor: ColorManager.buttonDisabled,
      side: const BorderSide(color: ColorManager.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSize.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.buttonRadius),
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorManager.textWhite,
        fontWeight: FontWeight.w500,
        fontFamily: 'Urbanist',
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorManager.white,
      backgroundColor: ColorManager.primary,
      disabledForegroundColor: ColorManager.darkGrey,
      disabledBackgroundColor: ColorManager.darkerGrey,
      side: const BorderSide(color: ColorManager.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSize.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.buttonRadius),
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorManager.textWhite,
        fontWeight: FontWeight.w600,
        fontFamily: 'Urbanist',
      ),
    ),
  );
}
