import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/widget/banner_container.dart';
import 'package:ecommerce_website/feature/contact/presentation/widgets/contact_detail_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/news_letter_section.dart';
import 'package:flutter/material.dart';

class ContactDesktopScreen extends StatelessWidget {
  const ContactDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerContainer(
          image: AppImage.banner,
          title: '#Let\'s_talk',
          subtitle: 'LEAVE A MESSAGE,WE love to hear from you !',
        ),
        SizedBox(height: AppSize.spaceBtwSections * 3),
        NewsLetterSection(),
        SizedBox(height: AppSize.spaceBtwSections * 3),
        ContactDetailsSection(),
        SizedBox(height: AppSize.spaceBtwSections * 3),
      ],
    );
  }
}

// class HeadOfficeMap extends StatelessWidget {
//   const HeadOfficeMap({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(width: 700, child: Image.asset(AppImage.map));
//   }
// }
