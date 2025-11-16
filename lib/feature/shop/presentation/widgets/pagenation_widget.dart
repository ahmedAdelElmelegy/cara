import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

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
