import 'package:ecommerce_website/core/utils/constants/colors.dart'
    show ColorManager;
import 'package:flutter/material.dart';

class FeatureModel {
  final String image;
  final String title;
  final Color color;
  const FeatureModel({
    required this.image,
    required this.title,
    this.color = ColorManager.primary,
  });
}
