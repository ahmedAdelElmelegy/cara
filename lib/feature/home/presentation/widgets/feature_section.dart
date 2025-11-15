import 'package:ecommerce_website/core/utils/constants/app_constants.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/feature_item.dart';
import 'package:flutter/material.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      runSpacing: DeviceUtility.isDesktopScreen(context)
          ? AppSize.spaceBtwSections
          : AppSize.spaceBtwItems,
      children: List.generate(
        AppConstants.featureItems.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.spaceBtwItems,
          ),
          child: FeatureItem(
            image: AppConstants.featureItems[index].image,
            title: AppConstants.featureItems[index].title,
            color: AppConstants.featureItems[index].color,
          ),
        ),
      ),
    );
  }
}
