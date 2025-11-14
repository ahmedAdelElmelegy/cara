import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTextFormFieldTheme {
  AppTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ColorManager.darkGrey,
    suffixIconColor: ColorManager.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeMd,
      color: ColorManager.textPrimary,
      fontFamily: 'Urbanist',
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeSm,
      color: ColorManager.textSecondary,
      fontFamily: 'Urbanist',
    ),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
      fontFamily: 'Urbanist',
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: ColorManager.textSecondary,
      fontFamily: 'Urbanist',
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorManager.borderPrimary),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorManager.borderPrimary),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: ColorManager.borderSecondary,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorManager.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorManager.error),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ColorManager.darkGrey,
    suffixIconColor: ColorManager.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeMd,
      color: ColorManager.white,
      fontFamily: 'Urbanist',
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeSm,
      color: ColorManager.white,
      fontFamily: 'Urbanist',
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: ColorManager.white.withValues(alpha: 0.8),
      fontFamily: 'Urbanist',
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorManager.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorManager.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorManager.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorManager.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorManager.error),
    ),
  );
}
