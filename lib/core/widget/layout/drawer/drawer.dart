import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> navBarItems = ['Home', 'Shop', 'Blog', 'About', 'Contact'];
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          color: ColorManager.white,
          border: Border(right: BorderSide(color: ColorManager.grey, width: 1)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // image,
              Image.asset(AppImage.logo, width: 100, height: 100),
              const SizedBox(height: AppSize.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.all(AppSize.defaultSpace),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: navBarItems.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      top: index == 0 ? 0 : AppSize.defaultSpace,
                    ),
                    child: NavBarItem(title: navBarItems[index], onTap: () {}),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
