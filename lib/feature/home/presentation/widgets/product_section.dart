import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_grid_view.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_headline.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final String subtitle;
  const ProductSection({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: !DeviceUtility.isDesktopScreen(context) ? 24 : 80,
      ),
      child: Column(
        children: [
          ProductHeadline(title: title, subtitle: subtitle),
          SizedBox(height: AppSize.spaceBtwSections * 2),
          ProductGridView(),
        ],
      ),
    );
  }
}
