import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:ecommerce_website/core/widget/layout/header/headers.dart';
import 'package:ecommerce_website/feature/home/presentation/widgets/fotter_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key, this.body});
  final Widget? body;

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            pinned: true,
            collapsedHeight: 80,
            flexibleSpace: Header(controller: _controller),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  switchInCurve: Curves.easeOut,
                  switchOutCurve: Curves.easeIn,

                  child: KeyedSubtree(
                    key: ValueKey(widget.body?.key ?? 'body'),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height,
                      ),
                      child: widget.body ?? const SizedBox.shrink(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
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
