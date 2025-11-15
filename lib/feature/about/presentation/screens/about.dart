import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';
import 'package:ecommerce_website/feature/about/presentation/screens/responsive/about_desktop_screen.dart';
import 'package:ecommerce_website/feature/about/presentation/screens/responsive/about_mobile_screen.dart';
import 'package:ecommerce_website/feature/about/presentation/screens/responsive/about_tablet_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSiteTemplate(
      mobile: const AboutMobileScreen(),
      tablet: const AboutTabletScreen(),
      desktop: const AboutDesktopScreen(),
    );
  }
}
