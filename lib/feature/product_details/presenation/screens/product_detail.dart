import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';
import 'package:ecommerce_website/feature/product_details/presenation/screens/responsive/product_detail_desktop_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSiteTemplate(
      // mobile: CartMobileScreen(),
      // tablet: CartTabletScreen(),
      desktop: ProductDetailDesktopScreen(),
    );
  }
}
