import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BannerContainer extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const BannerContainer({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,

      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: 50,
              color: ColorManager.white,
            ),
          ),
          SizedBox(height: AppSize.md),
          Text(
            subtitle,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.copyWith(color: ColorManager.lightGrey),
          ),
        ],
      ),
    );
  }
}
