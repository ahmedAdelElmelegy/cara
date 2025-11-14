import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppBottomSheetTheme {
  AppBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,

    backgroundColor: ColorManager.white,
    modalBackgroundColor: ColorManager.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ColorManager.black,
    modalBackgroundColor: ColorManager.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
