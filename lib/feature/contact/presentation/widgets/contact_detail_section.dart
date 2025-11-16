import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/feature/contact/presentation/widgets/head_office_detail.dart';
import 'package:ecommerce_website/feature/contact/presentation/widgets/head_office_map.dart';
import 'package:flutter/material.dart';

class ContactDetailsSection extends StatelessWidget {
  const ContactDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtility.isDesktopScreen(context) ? 80 : AppSize.lg,
      ),
      child: Wrap(
        runSpacing: AppSize.spaceBtwSections,
        children: [
          HeadOfficeDetail(),

          SizedBox(height: AppSize.spaceBtwSections * 3),
          SizedBox(
            width: 700,
            height: 500,
            child: HeadOfficeMap(lat: 30.0444, lng: 31.2357),
          ),
        ],
      ),
    );
  }
}
