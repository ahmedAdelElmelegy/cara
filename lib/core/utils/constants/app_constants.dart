import 'package:ecommerce_website/core/utils/constants/app_image.dart';
import 'package:ecommerce_website/core/utils/constants/colors.dart';
import 'package:ecommerce_website/feature/home/data/models/feature_model.dart';

class AppConstants {
  static List<FeatureModel> featureItems = [
    FeatureModel(
      image: AppImage.feature1,
      title: 'Free Shipping',
      color: ColorManager.featureB1Color,
    ),
    FeatureModel(
      image: AppImage.feature2,
      title: 'Online Order',
      color: ColorManager.featureB2Color,
    ),
    FeatureModel(
      image: AppImage.feature3,
      title: 'Save Money',
      color: ColorManager.featureB3Color,
    ),
    FeatureModel(
      image: AppImage.feature4,
      title: 'Promotions',
      color: ColorManager.featureB4Color,
    ),
    FeatureModel(
      image: AppImage.feature4,
      title: 'Happy Sell',
      color: ColorManager.featureB5Color,
    ),
    FeatureModel(
      image: AppImage.feature4,
      title: 'F24/7 Support',
      color: ColorManager.featureB6Color,
    ),
  ];
  static final List<String> productImage = [
    AppImage.product1,
    AppImage.product2,
    AppImage.product3,
    AppImage.product4,
    AppImage.product5,
    AppImage.product6,
    AppImage.product7,
    AppImage.product8,
  ];

  static final List<String> footerCenterLeft = [
    'About Us',
    'Delivery Information',
    'Privacy Policy',
    'Terms & Conditions',
    'Contact Us',
  ];

  static final List<String> footerCenterRight = [
    'Sign in',
    'View Cart',
    'Wishlist',
    'Blog',
    'Help',
  ];
}
