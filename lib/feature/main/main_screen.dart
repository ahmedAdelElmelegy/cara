import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSiteTemplate(
        // mobile: HomeMobileScreen(),
        // tablet: HomeTabletScreen(),
        desktop: child,
      ),
    );
  }
}

// h1=>50
// h2=>46
// h4=>20
// h6=>12
