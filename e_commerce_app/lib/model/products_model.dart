import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_images.dart';

class ProductsModel {
  const ProductsModel( {
    required this.image,
    required this.title,
    required this.star,
    required this.price,
    required this.icon,
    required this.text,
    this.color = AppColors.orange,
    required this.purchased,
    required this.stocks,
  });
  final String image;
  final String title;
  final String star;
  final String price;
  final IconData icon;
  final String text;
  final Color color;
  final String purchased;
  final String stocks;

  static const List<ProductsModel> productItems = [
    ProductsModel(image: AppImages.gridViewImage1, title: AppTexts.title1, star: '4.8', price: '\$17.00',
    icon: Icons.favorite_border, text: 'Hoodie', purchased: '112', stocks: '122'),
    ProductsModel(image: AppImages.gridViewImage2, title: AppTexts.title2, star: '4.8', price: '\$7.00',
        icon: Icons.favorite_border, text: 'T-Shirt',
        purchased: '112',
        stocks: '122'),
    ProductsModel(image: AppImages.gridViewImage3, title: AppTexts.title3, star: '4.8', price: '\$17.00',
        icon: Icons.favorite_border, text: 'Pants',
        purchased: '112',
        stocks: '122'),
    ProductsModel(image: AppImages.gridViewImage4, title: AppTexts.title4, star: '4.8', price: '\$17.00',
        icon: Icons.favorite_border, text: 'Jacket',
        purchased: '112',
        stocks: '122'),
  ];
}
