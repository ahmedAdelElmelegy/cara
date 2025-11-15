import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:ecommerce_website/core/utils/constants/app_constants.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      builder: (context, index) {
        return ProductItem(image: AppConstants.productImage[index]);
      },
      itemCount: AppConstants.productImage.length,
      crossAxisCount: !DeviceUtility.isDesktopScreen(context)
          ? DeviceUtility.isTabletScreen(context)
                ? 3
                : 2
          : 4,
      crossAxisSpacing: DeviceUtility.isDesktopScreen(context)
          ? AppSize.spaceBtwItems
          : AppSize.sm,
      mainAxisSpacing: DeviceUtility.isDesktopScreen(context)
          ? AppSize.spaceBtwItems
          : AppSize.sm,
    );
  }
}
