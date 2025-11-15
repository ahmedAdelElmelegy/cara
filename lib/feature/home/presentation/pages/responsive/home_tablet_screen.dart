import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/banner_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/feature_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/hero_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/news_letter_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_section.dart';
import 'package:flutter/material.dart';

class HomeTabletScreen extends StatelessWidget {
  const HomeTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeroWidget(),
        SizedBox(height: AppSize.spaceBtwSections * 2),
        FeatureSection(),
        SizedBox(height: AppSize.spaceBtwSections * 2),
        ProductSection(
          title: "Feature Products",
          subtitle: "Summer Collection New Modern Design",
        ),
        SizedBox(height: AppSize.spaceBtwSections * 2),
        BannerSection(),
        SizedBox(height: AppSize.spaceBtwSections * 3),

        //new arrivals
        ProductSection(
          title: "New Arrivals",
          subtitle: "Summer Collection New Modern Design",
        ),
        SizedBox(height: AppSize.spaceBtwSections * 3),

        // news letter
        NewsLetterSection(),
        SizedBox(height: AppSize.spaceBtwSections * 3),
      ],
    );
  }
}
