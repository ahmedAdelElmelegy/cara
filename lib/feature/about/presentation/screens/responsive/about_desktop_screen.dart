import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/widget/banner_container.dart';
import 'package:flutter/material.dart';

class AboutDesktopScreen extends StatelessWidget {
  const AboutDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerContainer(
          image: AppImage.banner,
          title: '#Know Us',
          subtitle: 'We are here to help you find the best products for you',
        ),
      ],
    );
  }
}
