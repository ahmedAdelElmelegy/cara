import 'package:ecommerce_website/core/router/routes.dart';
import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/core/utils/device/device_utility.dart';
import 'package:ecommerce_website/core/widget/layout/header/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Header extends StatefulWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const Header({super.key, this.scaffoldKey});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int currentIndex = 0;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _router = GoRouter.of(context);
      _router.routerDelegate.addListener(_onRouteChanged);
      _onRouteChanged();
      // change in the first time
    });
  }

  void _onRouteChanged() {
    final uri = _router.state.uri;
    final segments = uri.pathSegments;

    if (segments.isEmpty) return;

    final first = segments.first;
    debugPrint(first);

    setState(() {
      switch (first) {
        case 'home':
          currentIndex = 0;
          break;
        case 'shop':
          currentIndex = 1;
          break;
        case 'blog':
          currentIndex = 2;
          break;
        case 'about':
          currentIndex = 3;
          break;
        case 'contact':
          currentIndex = 4;
          break;
        default:
          currentIndex = 0;
      }
    });
  }

  @override
  void dispose() {
    _router.routerDelegate.removeListener(_onRouteChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> navBarItems = ['Home', 'Shop', 'Blog', 'About', 'Contact'];

    List<String> routes = [
      Routes.home,
      Routes.shop,
      Routes.blog,
      Routes.about,
      Routes.contact,
    ];

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
                widget.scaffoldKey?.currentState?.openDrawer();
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
                        onTap: () {
                          if (GoRouter.of(context).state.uri.path !=
                              routes[index]) {
                            _router.go(routes[index]);
                          }
                        },
                        isActive: index == currentIndex,
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
