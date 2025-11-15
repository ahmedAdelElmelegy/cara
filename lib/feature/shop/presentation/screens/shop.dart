import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';
import 'package:ecommerce_website/feature/shop/presentation/screens/responsive/shop_desktop_screen.dart';
import 'package:ecommerce_website/feature/shop/presentation/screens/responsive/shop_mobile_screen.dart';
import 'package:ecommerce_website/feature/shop/presentation/screens/responsive/shop_tablet_screen.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppSiteTemplate(
        mobile: ShopMobileScreen(),
        tablet: ShopTabletScreen(),
        desktop: ShopDesktopScreen(),
      ),
    );
  }
}
