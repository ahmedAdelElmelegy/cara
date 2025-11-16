import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/core/widget/banner_container.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/news_letter_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_grid_view.dart';
import 'package:ecommerce_website/feature/shop/presentation/widgets/pagenation_widget.dart';
import 'package:flutter/material.dart';

class ShopDesktopScreen extends StatelessWidget {
  const ShopDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerContainer(
          image: AppImage.banner1,
          title: '#stayhome',
          subtitle: 'Save more with coupons & up to 70% off',
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
