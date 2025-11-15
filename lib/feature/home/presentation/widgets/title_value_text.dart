import 'package:flutter/material.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';

class TitleValueText extends StatelessWidget {
  final String title;
  final String value;
  const TitleValueText({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.copyWith(color: ColorManager.black),
        ),
        // SizedBox(width: AppSize.sm),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: ColorManager.darkGrey),
        ),
      ],
    );
  }
}
