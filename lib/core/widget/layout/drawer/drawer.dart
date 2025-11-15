import 'package:ecommerce_website/core/router/routes.dart';
import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/core/widget/layout/header/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
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
                    child: NavBarItem(
                      title: navBarItems[index],
                      onTap: () {
                        _router.go(routes[index]);
                      },
                      isActive: index == currentIndex,
                    ),
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
