import 'package:ecommerce_website/core/router/routes.dart';
import 'package:ecommerce_website/feature/about/presentation/screens/about.dart';
import 'package:ecommerce_website/feature/blog/presentation/screens/blog.dart';
import 'package:ecommerce_website/feature/cart/presenation/screens/cart.dart';
import 'package:ecommerce_website/feature/contact/presentation/screens/contact.dart';
import 'package:ecommerce_website/feature/home/presentation/pages/home.dart';
import 'package:ecommerce_website/feature/product_details/presenation/screens/product_detail.dart';
import 'package:ecommerce_website/feature/shop/presentation/screens/shop.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: Routes.about,
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: Routes.contact,
      builder: (context, state) => const ContactScreen(),
    ),
    GoRoute(
      path: Routes.shop,
      builder: (context, state) => const ShopScreen(),
      routes: [
        GoRoute(
          path: Routes.productDetails,
          builder: (context, state) => const ProductDetailScreen(),
        ),
      ],
    ),
    GoRoute(path: Routes.blog, builder: (context, state) => const BlogScreen()),
    GoRoute(path: Routes.cart, builder: (context, state) => const CartScreen()),
  ],
  initialLocation: Routes.home,
);
