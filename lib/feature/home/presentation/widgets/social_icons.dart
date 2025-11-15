import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Iconsax.facebook),
        SizedBox(width: AppSize.sm),
        Icon(Iconsax.gemini),
        SizedBox(width: AppSize.sm),
        Icon(Iconsax.google_1),
        SizedBox(width: AppSize.sm),
        Icon(Iconsax.instagram),
        SizedBox(width: AppSize.sm),
        Icon(Iconsax.youtube),
      ],
    );
  }
}
