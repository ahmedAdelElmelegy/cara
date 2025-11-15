import 'package:flutter/material.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';

class AppResponsiveWidget extends StatelessWidget {
  const AppResponsiveWidget({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });
  final WidgetBuilder mobile;
  final WidgetBuilder tablet;
  final WidgetBuilder desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= AppSize.desktopScreenSize) {
          return desktop(context);
        } else if (constraints.maxWidth < AppSize.desktopScreenSize &&
            constraints.maxWidth >= AppSize.tabletScreenSize) {
          return tablet(context);
        } else {
          return mobile(context);
        }
      },
    );
  }
}
