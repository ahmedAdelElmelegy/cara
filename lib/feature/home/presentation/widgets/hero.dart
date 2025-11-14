import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.hero),
          fit: BoxFit.fill,
        ),
        color: ColorManager.lightContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Trade-in-offer',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: ColorManager.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSize.spaceBtwItems),
                Text(
                  'Super value deals',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium!.copyWith(fontSize: 46),
                ),
                const SizedBox(height: AppSize.spaceBtwItems),
                Text(
                  'On all products',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: ColorManager.textHero,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(height: AppSize.spaceBtwItems),
                Text(
                  'save more with coupons &up  to 70% off',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: ColorManager.textSecondary,
                  ),
                ),
                const SizedBox(height: AppSize.spaceBtwSections),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSize.buttonWidth,
                      vertical: AppSize.buttonHeight,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImage.button),
                      ),
                      // color: ColorManager.primary,
                    ),
                    child: Text(
                      'Shop Now',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: ColorManager.textPrimary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
