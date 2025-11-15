import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/widget/layout/drawer/drawer.dart';
import 'package:ecommerce_website/core/widget/layout/header/headers.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/fotter_section.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key, this.body});
  final Widget? body;

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: const DrawerWidget(),

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            collapsedHeight: 80,
            flexibleSpace: Header(scaffoldKey: _scaffoldKey),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                widget.body ?? SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: FotterSection(),
                ),
                const SizedBox(height: AppSize.spaceBtwSections),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
