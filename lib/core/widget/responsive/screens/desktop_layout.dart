import 'package:ecommerce_website/feature/home/presentation/widgets/fotter_section.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/headers.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            collapsedHeight: 80,
            flexibleSpace: Header(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                body ?? SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: FotterSection(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
