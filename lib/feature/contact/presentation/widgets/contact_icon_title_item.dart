import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ContactIconTitleItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const ContactIconTitleItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: ColorManager.dark),
        SizedBox(width: AppSize.md),
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: ColorManager.darkGrey),
        ),
      ],
    );
  }
}
