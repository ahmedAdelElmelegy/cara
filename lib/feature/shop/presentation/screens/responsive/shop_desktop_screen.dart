import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/news_letter_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/product_grid_view.dart';
import 'package:flutter/material.dart';

class ShopDesktopScreen extends StatelessWidget {
  const ShopDesktopScreen({super.key});

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

class PagenationWidget extends StatelessWidget {
  const PagenationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.cardRadiusSm),
            color: ColorManager.primary,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: index == 4
              ? const Icon(
                  Icons.arrow_forward,
                  color: ColorManager.white,
                  size: 20,
                )
              : Text(
                  (index + 1).toString(),
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(color: ColorManager.white),
                ),
        ),
      ),
    );
  }
}
