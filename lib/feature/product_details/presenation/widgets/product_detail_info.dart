import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:flutter/material.dart';

class ProductDetailInfo extends StatelessWidget {
  const ProductDetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.spaceBtwItems),
        Text(
          'Home/Shop/T-Shirt',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(color: Colors.black),
        ),
        SizedBox(height: AppSize.spaceBtwSections),
        Text(
          'Men\'s Fashion T-Shirt',
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(color: Colors.black),
        ),
        SizedBox(height: AppSize.spaceBtwSections),
        Text(
          '\$138.00',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSize.spaceBtwItems),
        SizedBox(
          width: 150,
          child: DropdownButtonFormField(
            items: ['S', 'M', 'L', 'XL', '2XL']
                .map(
                  (e) => DropdownMenuItem(value: e, child: Text(e.toString())),
                )
                .toList(),
            hint: const Text('Select Size'),

            onChanged: (value) {},
          ),
        ),
        SizedBox(height: AppSize.spaceBtwItems),
        Wrap(
          direction: Axis.horizontal,
          children: [
            SizedBox(
              width: 150,
              child: DropdownButtonFormField(
                items: [1, 2, 3, 4, 5]
                    .map(
                      (e) =>
                          DropdownMenuItem(value: e, child: Text(e.toString())),
                    )
                    .toList(),
                initialValue: 1,

                onChanged: (value) {},
              ),
            ),
            SizedBox(width: AppSize.spaceBtwSections),
            SizedBox(
              width: AppSize.buttonWidth,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Add To Cart'),
              ),
            ),
          ],
        ),

        SizedBox(height: AppSize.spaceBtwSections),
        Text(
          'Product Details',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: AppSize.spaceBtwItems),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt\n ut labore et dolore magna aliqua.',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
