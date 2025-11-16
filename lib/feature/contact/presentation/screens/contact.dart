import 'package:ecommerce_website/core/widget/layout/template/side_template.dart';
import 'package:ecommerce_website/feature/contact/presentation/screens/responsive/contact_desktop_screen.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSiteTemplate(
      // mobile: const ContactMobileScreen(),
      // tablet: const ContactTabletScreen(),
      desktop: const ContactDesktopScreen(),
    );
  }
}
