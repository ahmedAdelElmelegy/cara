import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductHeadline extends StatelessWidget {
  final String title;
  final String subtitle;
  const ProductHeadline({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontSize: 50,
            color: ColorManager.black,
          ),
        ),
        SizedBox(height: AppSize.spaceBtwItems),
        Text(
          subtitle,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: ColorManager.darkGrey),
        ),
      ],
    );
  }
}
