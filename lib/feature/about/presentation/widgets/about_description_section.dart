import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class AboutDescriptionSection extends StatelessWidget {
  const AboutDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtility.isDesktopScreen(context) ? 80 : 24,
      ),
      child: Wrap(
        runSpacing: AppSize.spaceBtwSections,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            width: 700,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImage.about6),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: AppSize.spaceBtwSections * 2),
          SizedBox(
            width: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Who We Are ?',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.black,
                    fontSize: 46,
                  ),
                ),
                SizedBox(height: AppSize.spaceBtwSections),
                Text(
                  'If everyone used the identical lorem ipsum copy, search engines would flag it for plagiarism and downgrade the site for its lack of helpful content for the reader. However, when you send sample layouts filled with fun lorem ipsum to your customers, they will focus on the look and feel of the page',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: ColorManager.darkGrey,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: AppSize.spaceBtwSections * 2),
                Text(
                  'If everyone used the identical lorem ipsum copy, search engines would ',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: ColorManager.darkGrey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
