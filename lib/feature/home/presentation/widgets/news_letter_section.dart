import 'package:flutter/material.dart';
import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';

class NewsLetterSection extends StatelessWidget {
  const NewsLetterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: double.infinity,

          decoration: BoxDecoration(color: Color(0xff041e42)),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImage.banner14),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Wrap(
            runSpacing: AppSize.spaceBtwItems,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 920,
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up For A Newsletter",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: AppSize.sm),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          'Get E-mail updates about our latest shop and ',
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(color: ColorManager.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'special offers.',
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(color: Colors.amber),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Enter your email",
                        fillColor: ColorManager.white,

                        filled: true,
                        hintStyle: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: AppSize.buttonWidth,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        backgroundColor: ColorManager.primary,
                      ),
                      onPressed: () {},
                      child: Text("Subscribe"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
