import 'package:ecommerce_website/core/utils/constants/app_constants.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/feature_item.dart';
import 'package:flutter/material.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtility.isDesktopScreen(context) ? 80 : AppSize.lg,
      ),
      child: Align(
        alignment: DeviceUtility.isDesktopScreen(context)
            ? Alignment.centerLeft
            : Alignment.center,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          alignment: WrapAlignment.start,
          runSpacing: DeviceUtility.isDesktopScreen(context)
              ? AppSize.spaceBtwSections
              : AppSize.spaceBtwItems,
          spacing: DeviceUtility.isDesktopScreen(context)
              ? AppSize.spaceBtwItems
              : AppSize.sm,

          children: List.generate(
            AppConstants.featureItems.length,
            (index) => FeatureItem(
              image: AppConstants.featureItems[index].image,
              title: AppConstants.featureItems[index].title,
              color: AppConstants.featureItems[index].color,
            ),
          ),
        ),
      ),
    );
  }
}
