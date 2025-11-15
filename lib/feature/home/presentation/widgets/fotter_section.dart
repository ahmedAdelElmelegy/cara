import 'package:ecommerce_website/core/utils/constants/app_constants.dart';
import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/fotter_column.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/instail_app_btn.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/social_icons.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/title_value_text.dart';
import 'package:flutter/material.dart';

class FotterSection extends StatelessWidget {
  const FotterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 200,
      runSpacing: 50,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      children: [
        FottorColumn(
          fotterHeader: Image.asset(AppImage.logo),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About',
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge!.copyWith(color: ColorManager.black),
              ),
              SizedBox(height: AppSize.spaceBtwSections),
              TitleValueText(
                title: 'Address:',
                value: '123 Main Street, Anytown, USA',
              ),
              SizedBox(height: AppSize.md),
              TitleValueText(title: 'Phone:', value: '+123 456 789'),
              SizedBox(height: AppSize.md),
              TitleValueText(
                title: 'Hours:',
                value: 'Mon - Sun: 9:00 AM - 6:00 PM',
              ),
              SizedBox(height: AppSize.spaceBtwSections),
              Text(
                'Follow Us',
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge!.copyWith(color: ColorManager.black),
              ),

              SizedBox(height: AppSize.spaceBtwItems),
              SocialIcons(),
            ],
          ),
        ),
        FottorColumn(
          fotterTitle: 'About',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              AppConstants.footerCenterLeft.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: AppSize.sm),
                child: Text(
                  AppConstants.footerCenterLeft[index],
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: ColorManager.darkGrey,
                  ),
                ),
              ),
            ),
          ),
        ),
        FottorColumn(
          fotterTitle: 'My Account',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              AppConstants.footerCenterRight.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: AppSize.sm),
                child: Text(
                  AppConstants.footerCenterRight[index],
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: ColorManager.darkGrey,
                  ),
                ),
              ),
            ),
          ),
        ),
        FottorColumn(
          fotterTitle: 'Install App',
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'From App Store or Google Play',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: ColorManager.darkGrey,
                ),
              ),
              SizedBox(height: AppSize.spaceBtwSections),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InstallAppButton(image: AppImage.applePay),
                  SizedBox(width: AppSize.md),
                  InstallAppButton(image: AppImage.playPay),
                ],
              ),
              SizedBox(height: AppSize.spaceBtwItems),
              Text(
                'Secure Payment Guarantee',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: ColorManager.darkGrey,
                ),
              ),
              SizedBox(height: AppSize.spaceBtwItems),
              Image.asset(AppImage.visaPay),
            ],
          ),
        ),
      ],
    );
  }
}
