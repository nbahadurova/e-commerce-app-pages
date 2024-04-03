import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_colors.dart';

class Price extends StatelessWidget {
  const Price({super.key, required this.productPrice});
  final double productPrice;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Price',
            style: TextStyle(fontSize: 14, color: AppColors.categoryNames)),
        Text(
          productPrice.toString(),
          style: TextStyle(fontSize: 20, color: AppColors.orange),
        )
      ],
    );
  }
}
