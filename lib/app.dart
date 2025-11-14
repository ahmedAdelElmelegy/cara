import 'package:ecommerce_website/core/theme/theme.dart';
import 'package:ecommerce_website/core/utils/constants/app_text.dart';
import 'package:ecommerce_website/core/utils/device/web_material_scroll.dart';
import 'package:ecommerce_website/feature/home/presentation/pages/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: AppText.appName,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: AppTheme.lightTheme,

      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}
