import 'package:ecommerce_website/core/router/routes.dart';
import 'package:ecommerce_website/feature/about/presentation/screens/responsive/about_desktop_screen.dart';
import 'package:ecommerce_website/feature/blog/presentation/screens/responsive/blog_desktop_screen.dart';
import 'package:ecommerce_website/feature/cart/presenation/screens/responsive/cart_desktop_screen.dart';
import 'package:ecommerce_website/feature/contact/presentation/screens/responsive/contact_desktop_screen.dart';
import 'package:ecommerce_website/feature/main/main_screen.dart';
import 'package:ecommerce_website/feature/home/presentation/pages/responsive/home_desktop_screen.dart';
import 'package:ecommerce_website/feature/product_details/presenation/screens/product_detail.dart';
import 'package:ecommerce_website/feature/shop/presentation/screens/responsive/shop_desktop_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainScreen(child: child),
      routes: [
        GoRoute(
          path: Routes.home,
          pageBuilder: (context, state) => NoTransitionPage(
            // transitionDuration: const Duration(milliseconds: 300),
            // reverseTransitionDuration: const Duration(milliseconds: 250),
            // transitionsBuilder:
            //     (context, animation, secondaryAnimation, child) {
            //       return FadeTransition(opacity: animation, child: child);
            //     },
            key: state.pageKey,
            child: const HomeDesktopScreen(),
          ),
        ),
        GoRoute(
          path: Routes.about,
          pageBuilder: (context, state) => NoTransitionPage(
            // transitionDuration: const Duration(milliseconds: 300),
            // reverseTransitionDuration: const Duration(milliseconds: 250),
            // transitionsBuilder:
            //     (context, animation, secondaryAnimation, child) {
            //       return FadeTransition(opacity: animation, child: child);
            //     },
            key: state.pageKey,
            child: const AboutDesktopScreen(),
          ),
        ),
        GoRoute(
          path: Routes.contact,
          pageBuilder: (context, state) => NoTransitionPage(
            // transitionDuration: const Duration(milliseconds: 300),
            // reverseTransitionDuration: const Duration(milliseconds: 250),
            // transitionsBuilder:
            //     (context, animation, secondaryAnimation, child) {
            //       return FadeTransition(opacity: animation, child: child);
            //     },
            key: state.pageKey,
            child: const ContactDesktopScreen(),
          ),
        ),
        GoRoute(
          path: Routes.shop,
          pageBuilder: (context, state) => NoTransitionPage(
            // transitionDuration: const Duration(milliseconds: 300),
            // reverseTransitionDuration: const Duration(milliseconds: 250),
            // transitionsBuilder:
            //     (context, animation, secondaryAnimation, child) {
            //       return FadeTransition(opacity: animation, child: child);
            //     },
            key: state.pageKey,
            child: const ShopDesktopScreen(),
          ),
          routes: [
            GoRoute(
              path: 'product-details',
              pageBuilder: (context, state) => NoTransitionPage(
                // transitionDuration: const Duration(milliseconds: 300),
                // reverseTransitionDuration: const Duration(milliseconds: 250),
                // transitionsBuilder:
                //     (context, animation, secondaryAnimation, child) {
                //       return FadeTransition(opacity: animation, child: child);
                //     },
                key: state.pageKey,
                child: const ProductDetailScreen(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: Routes.blog,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const BlogDesktopScreen(),
          ),
        ),
        GoRoute(
          path: Routes.cart,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const CartDesktopScreen(),
          ),
        ),
      ],
    ),
  ],
  initialLocation: Routes.home,
);
