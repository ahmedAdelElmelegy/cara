import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final int index;
  final VoidCallback onTap;
  final bool isActive;

  const NavBarItem({
    required this.title,
    required this.index,
    required this.onTap,
    this.isActive = false,
    super.key,
  });

  @override
  State<NavBarItem> createState() => NavBarItemState();
}

class NavBarItemState extends State<NavBarItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => setState(() => isHovering = value),
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isHovering || widget.isActive
                  ? ColorManager.primary
                  : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          widget.title,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: isHovering || widget.isActive
                ? ColorManager.primary
                : ColorManager.textSecondary,
          ),
        ),
      ),
    );
  }
}
