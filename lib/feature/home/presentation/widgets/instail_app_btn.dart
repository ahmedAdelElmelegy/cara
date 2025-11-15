import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class InstallAppButton extends StatelessWidget {
  final String image;
  const InstallAppButton({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ColorManager.primary, width: 1),
      ),
      onPressed: () {},
      child: Image.asset(image),
    );
  }
}
