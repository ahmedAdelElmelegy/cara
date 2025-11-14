import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.navBarItems});

  final List<String> navBarItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: AppSize.defaultSpace,
      ),
      decoration: BoxDecoration(
        color: ColorManager.headerBg,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.06),
            offset: const Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImage.logo),
          const SizedBox(width: 10),
          Row(
            children: [
              Row(
                children: List.generate(
                  navBarItems.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 0 : AppSize.spaceBtwSections,
                    ),
                    child: NavBarItem(title: navBarItems[index], onTap: () {}),
                  ),
                ),
              ),
              const SizedBox(width: AppSize.spaceBtwSections * 2),
              Icon(Iconsax.shopping_cart_copy),
            ],
          ),
        ],
      ),
    );
  }
}
