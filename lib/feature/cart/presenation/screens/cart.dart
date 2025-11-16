import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';
import 'package:ecommerce_website/feature/cart/presenation/screens/responsive/cart_desktop_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSiteTemplate(
      // mobile: CartMobileScreen(),
      // tablet: CartTabletScreen(),
      desktop: CartDesktopScreen(),
    );
  }
}
