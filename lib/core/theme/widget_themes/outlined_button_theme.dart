import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Outlined Button Themes -- */
class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorManager.dark,
      side: const BorderSide(color: ColorManager.borderPrimary),
      padding: const EdgeInsets.symmetric(
        vertical: AppSize.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.buttonRadius),
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        color: ColorManager.black,
        fontWeight: FontWeight.w600,
        fontFamily: 'Urbanist',
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorManager.light,
      side: const BorderSide(color: ColorManager.borderPrimary),
      padding: const EdgeInsets.symmetric(
        vertical: AppSize.buttonHeight,
        horizontal: 20,
      ),
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
