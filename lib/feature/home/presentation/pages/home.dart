import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/banner_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/feature_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/headers.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/hero.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> navBarItems = ['Home', 'Shop', 'Blog', 'About', 'Contact'];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,

            collapsedHeight: 80,

            flexibleSpace: Header(navBarItems: navBarItems),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeroWidget(), SizedBox(height: AppSize.spaceBtwSections * 2),

                  // features
                  FeatureSection(),
                  SizedBox(height: AppSize.spaceBtwSections * 2),

                  // products
                  ProductSection(
                    title: "Feature Products",
                    subtitle: "Summer Collection New Modern Design",
                  ),
                  SizedBox(height: AppSize.spaceBtwSections * 3),

                  // banner
                  BannerSection(),
                  SizedBox(height: AppSize.spaceBtwSections * 3),
                  //new arrivals
                  ProductSection(
                    title: "New Arrivals",
                    subtitle: "Summer Collection New Modern Design",
                  ),

                  SizedBox(height: 200),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// h1=>50
// h2=>46
// h4=>20
// h6=>12
