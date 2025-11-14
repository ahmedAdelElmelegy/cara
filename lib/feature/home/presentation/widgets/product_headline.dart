import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductHeadline extends StatelessWidget {
  const ProductHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Feature Products",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(fontSize: 50),
        ),
        SizedBox(height: AppSize.spaceBtwItems),
        Text(
          "Summer Collection New Modern Design",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: ColorManager.darkGrey),
        ),
      ],
    );
  }
}
