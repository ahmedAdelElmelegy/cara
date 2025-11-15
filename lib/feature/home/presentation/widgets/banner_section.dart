import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.banner2),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Repair Services',
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.copyWith(color: Colors.white),
          ),
          SizedBox(height: AppSize.spaceBtwItems),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Up to',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 46,
                ),
              ),

              Text(
                '70% Off',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.red,
                  fontSize: 46,
                ),
              ),
              Flexible(
                child: Text(
                  '- All t-Shirts & Accessories',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.white,
                    fontSize: 46,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSize.spaceBtwSections),
          SizedBox(
            width: AppSize.buttonWidth * 1.5,
            height: AppSize.buttonHeight * 3,
            child: ElevatedButton(
              onHover: (value) {
                setState(() {
                  isHovered = value;
                });
              },
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: isHovered
                    ? ColorManager.primary
                    : Colors.white,
              ),
              child: Text(
                'Explore More',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: isHovered ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
