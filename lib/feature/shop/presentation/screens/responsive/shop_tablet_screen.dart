import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/news_letter_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_grid_view.dart';
import 'package:ecommerce_website/feature/shop/presentation/widgets/pagenation_widget.dart';
import 'package:flutter/material.dart';

class ShopTabletScreen extends StatelessWidget {
  const ShopTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 350,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImage.banner1),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '#stayhome',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 50,
                  color: ColorManager.white,
                ),
              ),
              SizedBox(height: AppSize.md),
              Text(
                'Save more with coupons & up to 70% off',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: ColorManager.darkGrey,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: AppSize.spaceBtwSections * 3),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: DeviceUtility.isDesktopScreen(context)
                ? 80
                : AppSize.lg,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductGridView(),
              SizedBox(height: AppSize.spaceBtwSections),
              PagenationWidget(),
            ],
          ),
        ),
        SizedBox(height: AppSize.spaceBtwSections * 2),

        NewsLetterSection(),

        SizedBox(height: AppSize.spaceBtwSections * 3),
      ],
    );
  }
}
