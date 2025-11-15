import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Header extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const Header({super.key, this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    List<String> navBarItems = ['Home', 'Shop', 'Blog', 'About', 'Contact'];

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: !DeviceUtility.isDesktopScreen(context) ? 24 : 80,
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
          if (DeviceUtility.isDesktopScreen(context))
            Image.asset(AppImage.logo),
          if (!DeviceUtility.isDesktopScreen(context))
            IconButton(
              icon: const Icon(Iconsax.menu),
              onPressed: () {
                scaffoldKey?.currentState?.openDrawer();
              },
            ),
          const SizedBox(width: 10),
          Row(
            children: [
              if (DeviceUtility.isDesktopScreen(context))
                Row(
                  children: List.generate(
                    navBarItems.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 0 : AppSize.spaceBtwSections,
                      ),
                      child: NavBarItem(
                        title: navBarItems[index],
                        onTap: () {},
                      ),
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
