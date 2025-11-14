import 'package:flutter/material.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';

/// Custom Class for Light & Dark Text Themes
class AppTextTheme {
  AppTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: ColorManager.textPrimary,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: ColorManager.textPrimary,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: ColorManager.textPrimary,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorManager.textPrimary,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorManager.textSecondary,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: ColorManager.textSecondary,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: ColorManager.textPrimary,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: ColorManager.textPrimary,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: ColorManager.textSecondary,
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: ColorManager.textPrimary,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: ColorManager.textSecondary,
    ),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: ColorManager.light,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: ColorManager.light,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorManager.light,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: ColorManager.light,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorManager.light,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: ColorManager.light,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: ColorManager.light,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: ColorManager.light,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: ColorManager.light.withValues(alpha: 0.5),
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: ColorManager.light,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: ColorManager.light.withValues(alpha: 0.5),
    ),
  );
}
