import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductItem extends StatefulWidget {
  final String image;
  const ProductItem({super.key, required this.image});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (value) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.md,
          horizontal: AppSize.md,
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ]
              : [],
          borderRadius: BorderRadius.circular(AppSize.borderRadiusLg),
          border: Border.all(color: Colors.grey.withValues(alpha: 0.2)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 370,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.borderRadiusLg),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: AppSize.spaceBtwSections),
            Text(
              "adidas",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: ColorManager.darkGrey,
              ),
            ),
            SizedBox(height: AppSize.spaceBtwItems / 2),
            Text(
              "Cartoon Astronaut T-Shirts",
              style: Theme.of(context).textTheme.headlineLarge!,
            ),
            SizedBox(height: AppSize.spaceBtwItems / 2),
            Row(
              children: List.generate(
                5,
                (index) => const Icon(Icons.star, color: Colors.amber),
              ),
            ),
            SizedBox(height: AppSize.spaceBtwItems / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$199.99',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: ColorManager.primary,
                  ),
                ),

                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(AppSize.iconMd),
                  child: CircleAvatar(
                    radius: AppSize.iconMd,
                    backgroundColor: ColorManager.primary.withValues(
                      alpha: 0.2,
                    ),
                    child: Icon(
                      Iconsax.shopping_cart,
                      color: ColorManager.primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
