import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/feature/contact/presentation/widgets/contact_icon_title_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HeadOfficeDetail extends StatelessWidget {
  const HeadOfficeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get in Touch'.toUpperCase(),
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: ColorManager.darkGrey),
          ),
          SizedBox(height: AppSize.spaceBtwItems),
          Text(
            'Visit one of our  agency locations \n or contact us today',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: ColorManager.dark,
              fontSize: 35,
            ),
          ),
          SizedBox(height: AppSize.spaceBtwSections),
          Text(
            'Head Office',
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.copyWith(color: ColorManager.dark),
          ),
          SizedBox(height: AppSize.spaceBtwItems),
          ContactIconTitleItem(
            title: '56, Street, City, Country',
            icon: Iconsax.map_1,
          ),
          SizedBox(height: AppSize.spaceBtwItems),
          ContactIconTitleItem(title: 'info@ecommerce.com', icon: Icons.email),
          SizedBox(height: AppSize.spaceBtwItems),
          ContactIconTitleItem(title: '+20 123 456 789', icon: Iconsax.call),
          SizedBox(height: AppSize.spaceBtwItems),
          ContactIconTitleItem(
            title: 'Monday - Friday: 9:00 - 17:00',
            icon: Iconsax.info_circle,
          ),
        ],
      ),
    );
  }
}
