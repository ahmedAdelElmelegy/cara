import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/feature/product_details/presenation/widgets/product_detail_info.dart';
import 'package:ecommerce_website/feature/product_details/presenation/widgets/product_detail_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailDesktopScreen extends StatelessWidget {
  const ProductDetailDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSize.spaceBtwSections * 2),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: DeviceUtility.isDesktopScreen(context) ? 80 : 24,
          ),
          child: Wrap(
            direction: Axis.horizontal,
            runSpacing: DeviceUtility.isDesktopScreen(context)
                ? AppSize.spaceBtwSections
                : AppSize.spaceBtwItems,
            children: [
              ProductDetailImage(),
              SizedBox(width: AppSize.spaceBtwSections),
              ProductDetailInfo(),
            ],
          ),
        ),
        const SizedBox(height: AppSize.spaceBtwSections * 2),
      ],
    );
  }
}
