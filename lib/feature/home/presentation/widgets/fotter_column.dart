import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FottorColumn extends StatelessWidget {
  final Widget? fotterHeader;
  final String? fotterTitle;
  final Widget child;
  const FottorColumn({
    super.key,
    required this.child,
    this.fotterHeader,
    this.fotterTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        fotterHeader ??
            Text(
              fotterTitle!,
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.copyWith(color: ColorManager.black),
            ),
        SizedBox(height: AppSize.spaceBtwSections),
        child,
      ],
    );
  }
}
