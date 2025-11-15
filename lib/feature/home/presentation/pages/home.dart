import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';
import 'package:ecommerce_website/feature/home/presentation/pages/responsive/home_desktop_screen.dart';
import 'package:ecommerce_website/feature/home/presentation/pages/responsive/home_mobile_screen.dart';
import 'package:ecommerce_website/feature/home/presentation/pages/responsive/home_tablet_screen.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSiteTemplate(
        mobile: HomeMobileScreen(),
        tablet: HomeTabletScreen(),
        desktop: HomeDesktopScreen(),
      ),
    );
  }
}

// h1=>50
// h2=>46
// h4=>20
// h6=>12
