import 'package:ecommerce_website/core/widget/responsive/responsive_design.dart';
import 'package:ecommerce_website/core/widget/responsive/screens/desktop_layout.dart';
import 'package:ecommerce_website/core/widget/responsive/screens/mobile_layout.dart';
import 'package:ecommerce_website/core/widget/responsive/screens/tablet_layout.dart';
import 'package:flutter/material.dart';

class AppSiteTemplate extends StatelessWidget {
  const AppSiteTemplate({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
    this.useLayout = true,
  });
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppResponsiveWidget(
        mobile: (context) => useLayout
            ? MobileLayout(body: mobile ?? desktop)
            : mobile ?? desktop ?? Container(),
        tablet: (context) => useLayout
            ? TabletLayout(body: tablet ?? desktop)
            : tablet ?? desktop ?? Container(),
        desktop: (context) =>
            useLayout ? DesktopLayout(body: desktop) : desktop ?? Container(),
      ),
    );
  }
}
