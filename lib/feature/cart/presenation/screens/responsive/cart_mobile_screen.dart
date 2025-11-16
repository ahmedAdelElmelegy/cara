import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/core/widget/banner_container.dart';
import 'package:ecommerce_website/feature/cart/presenation/widgets/cart_table.dart';
import 'package:flutter/material.dart';

class CartMobileScreen extends StatelessWidget {
  const CartMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerContainer(
          image: AppImage.banner,
          title: '#cart',
          subtitle: 'Add your coupon code & Save up to 70% !',
        ),
        SizedBox(height: AppSize.spaceBtwSections * 3),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: DeviceUtility.isDesktopScreen(context)
                ? 80
                : AppSize.md,
          ),
          child: SizedBox(height: 1100, child: CartTable()),
        ),
        SizedBox(height: AppSize.spaceBtwSections * 3),
      ],
    );
  }
}
