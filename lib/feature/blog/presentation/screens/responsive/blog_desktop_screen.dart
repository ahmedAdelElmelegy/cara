import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/widget/banner_container.dart';
import 'package:ecommerce_website/feature/blog/presentation/widgets/blog_image_section.dart';
import 'package:ecommerce_website/feature/shop/presentation/widgets/pagenation_widget.dart';
import 'package:flutter/material.dart';

class BlogDesktopScreen extends StatelessWidget {
  const BlogDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerContainer(
          image: AppImage.banner19,
          title: '#readmore',
          subtitle: 'Read all case studies about our products!',
        ),
        SizedBox(height: AppSize.spaceBtwSections * 3),
        BlogImageSection(
          image: AppImage.blog,
          title: 'The Cotton -Jersey Zip-Up Hoodie',
        ),
        SizedBox(height: AppSize.spaceBtwSections * 2),
        BlogImageSection(image: AppImage.blog2, title: 'How to style a Quiff'),
        SizedBox(height: AppSize.spaceBtwSections * 2),
        BlogImageSection(
          image: AppImage.blog3,
          title: 'Must-Have Skater Girl Items',
        ),
        SizedBox(height: AppSize.spaceBtwSections),
        BlogImageSection(image: AppImage.blog4, title: 'Runway-Inspired Trend'),
        SizedBox(height: AppSize.spaceBtwSections * 2),
        PagenationWidget(),
        SizedBox(height: AppSize.spaceBtwSections * 3),
      ],
    );
  }
}
