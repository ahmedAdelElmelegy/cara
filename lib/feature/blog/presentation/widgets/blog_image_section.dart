import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BlogImageSection extends StatelessWidget {
  final String image;
  final String title;

  const BlogImageSection({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: AppSize.sm,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          width: 800,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: AppSize.spaceBtwSections * 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineLarge!),
            SizedBox(height: AppSize.spaceBtwItems),
            Text(
              'Kickstarter man  braid godard coloring book.\n Racette waistcoat selhes yr walf chartreuse hexagon irony/n godard...',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: ColorManager.darkGrey,
              ),
            ),
            SizedBox(height: AppSize.spaceBtwSections),

            Text(
              'CONTINUE READING ---------',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(color: ColorManager.black),
            ),
          ],
        ),
      ],
    );
  }
}
