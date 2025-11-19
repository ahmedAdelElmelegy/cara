import 'package:ecommerce_website/core/router/routes.dart';
import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';
import 'package:ecommerce_website/feature/about/presentation/screens/about.dart';
import 'package:ecommerce_website/feature/about/presentation/screens/responsive/about_desktop_screen.dart';
import 'package:ecommerce_website/feature/blog/presentation/screens/blog.dart';
import 'package:ecommerce_website/feature/blog/presentation/screens/responsive/blog_desktop_screen.dart';
import 'package:ecommerce_website/feature/cart/presenation/screens/cart.dart';
import 'package:ecommerce_website/feature/cart/presenation/screens/responsive/cart_desktop_screen.dart';
import 'package:ecommerce_website/feature/contact/presentation/screens/contact.dart';
import 'package:ecommerce_website/feature/contact/presentation/screens/responsive/contact_desktop_screen.dart';
import 'package:ecommerce_website/feature/main/main_screen.dart';
import 'package:ecommerce_website/feature/home/presentation/pages/responsive/home_desktop_screen.dart';
import 'package:ecommerce_website/feature/product_details/presenation/screens/product_detail.dart';
import 'package:ecommerce_website/feature/shop/presentation/screens/responsive/shop_desktop_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainScreen(child: child),
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) => const HomeDesktopScreen(),
        ),
        GoRoute(
          path: Routes.about,
          builder: (context, state) => const AboutDesktopScreen(),
        ),
        GoRoute(
          path: Routes.contact,
          builder: (context, state) => const ContactDesktopScreen(),
        ),
        GoRoute(
          path: Routes.shop,
          builder: (context, state) => const ShopDesktopScreen(),
          routes: [
            GoRoute(
              path: 'product-details',
              builder: (context, state) => const ProductDetailScreen(),
            ),
          ],
        ),
        GoRoute(
          path: Routes.blog,
          builder: (context, state) => const BlogDesktopScreen(),
        ),
        GoRoute(
          path: Routes.cart,
          builder: (context, state) => const CartDesktopScreen(),
        ),
      ],
    ),
  ],
  initialLocation: Routes.home,
);
