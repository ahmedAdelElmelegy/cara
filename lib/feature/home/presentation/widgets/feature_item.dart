import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/core/utils/constants/app_size.dart';
import 'package:flutter/material.dart';

class FeatureItem extends StatefulWidget {
  final String image;
  final String title;
  final Color color;
  const FeatureItem({
    super.key,
    required this.image,
    required this.title,
    this.color = ColorManager.primary,
  });

  @override
  State<FeatureItem> createState() => _FeatureItemState();
}

class _FeatureItemState extends State<FeatureItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.defaultSpace,
          vertical: AppSize.defaultSpace,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: ColorManager.grey),
          borderRadius: BorderRadius.circular(12),
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: isHovered
                  ? ColorManager.grey.withValues(alpha: 0.8)
                  : ColorManager.grey.withValues(alpha: 0.2),
              offset: const Offset(0, 5),
              blurRadius: 20,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(widget.image),
            SizedBox(height: AppSize.spaceBtwSections),

            SizedBox(
              width: AppSize.buttonWidth,

              child: ElevatedButton(
                autofocus: false,
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.color,
                  side: BorderSide.none,
                ),

                child: Text(
                  widget.title,
                  style: TextStyle(color: ColorManager.featureTColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
