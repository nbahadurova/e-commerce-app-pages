import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/model/product_categories_model.dart';

class ProductCategories extends StatelessWidget {
  const ProductCategories({super.key, required this.color, required this.text});
  // final ProductCategoriesModel products;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.right10,
      child: Text(
        text,
        style:  TextStyle(
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
