import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

/// Custom Class for Light & Dark Text Themes
class AppCheckboxTheme {
  AppCheckboxTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSize.xs),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorManager.white;
      } else {
        return ColorManager.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorManager.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );

  /// Customizable Dark Text Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSize.xs),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorManager.white;
      } else {
        return ColorManager.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return ColorManager.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
