import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
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
                  SizedBox(height: AppSize.spaceBtwSections * 3),

                  // news letter
                  NewsLetterSection(),
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

class NewsLetterSection extends StatelessWidget {
  const NewsLetterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      height: 200,
      width: double.infinity,

      decoration: BoxDecoration(
        color: Color(0xff041e42),
        image: DecorationImage(
          image: AssetImage(AppImage.banner14),

          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up For A Newsletter",
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(color: Colors.white),
              ),
              SizedBox(height: AppSize.sm),
              Text(
                'Get E-mail updates about our latest shop and special offers.',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.white),
              ),
              SizedBox(height: AppSize.spaceBtwItems),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Enter your email",
                    hintStyle: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: AppSize.buttonWidth,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    backgroundColor: ColorManager.primary,
                  ),
                  onPressed: () {},
                  child: Text("Subscribe"),
                ),
              ),
            ],
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
