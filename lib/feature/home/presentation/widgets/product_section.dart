import 'package:ecommerce_website/feature/home/presentation/widgets/product_grid_view.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_headline.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        children: [
          ProductHeadline(),
          SizedBox(height: AppSize.spaceBtwSections * 2),
          ProductGridView(),
        ],
      ),
    );
  }
}
