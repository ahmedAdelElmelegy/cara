import 'package:ecommerce_website/core/router/app_routes.dart';
import 'package:ecommerce_website/core/theme/theme.dart';
import 'package:ecommerce_website/core/utils/constants/app_text.dart';
import 'package:ecommerce_website/core/utils/device/web_material_scroll.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,

      title: AppText.appName,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: AppTheme.lightTheme,

      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
