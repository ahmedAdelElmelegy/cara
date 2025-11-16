import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:flutter/material.dart';

class ProductDetailImage extends StatelessWidget {
  const ProductDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 600,
          width: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImage.product1),
              fit: BoxFit.cover,
            ),
          ),
        ),

        const SizedBox(height: 10),

        Wrap(
          direction: Axis.horizontal,
          runSpacing: 10,
          children: List.generate(
            4,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container(
                height: 145,
                width: 145,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImage.product1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
