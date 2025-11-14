import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    iconTheme: IconThemeData(
      color: ColorManager.iconPrimary,
      size: AppSize.iconMd,
    ),
    actionsIconTheme: IconThemeData(
      color: ColorManager.iconPrimary,
      size: AppSize.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: ColorManager.black,
      fontFamily: 'Urbanist',
    ),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: ColorManager.dark,
    surfaceTintColor: ColorManager.dark,
    iconTheme: IconThemeData(color: ColorManager.black, size: AppSize.iconMd),
    actionsIconTheme: IconThemeData(
      color: ColorManager.white,
      size: AppSize.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: ColorManager.white,
      fontFamily: 'Urbanist',
    ),
  );
}
