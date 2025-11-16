import 'package:ecommerce_website/core/widget/banner_container.dart';
import 'package:ecommerce_website/feature/about/presentation/widgets/about_description_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/feature_section.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/app_image.dart';
import '../../../../../core/utils/constants/app_size.dart';

class AboutTabletScreen extends StatelessWidget {
  const AboutTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerContainer(
          image: AppImage.banner,
          title: '#Know Us',
          subtitle: 'We are here to help you find the best products for you',
        ),
        SizedBox(height: AppSize.spaceBtwSections * 3),
        AboutDescriptionSection(),
        SizedBox(height: AppSize.spaceBtwSections * 3),

        FeatureSection(),
        SizedBox(height: AppSize.spaceBtwSections * 3),
      ],
    );
  }
}
