import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';
import 'package:ecommerce_website/feature/blog/presentation/screens/responsive/blog_desktop_screen.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSiteTemplate(desktop: const BlogDesktopScreen());
  }
}
