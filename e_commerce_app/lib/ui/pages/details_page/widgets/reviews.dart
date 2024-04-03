import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/extensions/num_extensions.dart';

class Reviews extends StatelessWidget {
  const Reviews({
    super.key,
    required this.numberText,
    // required this.reviews, 
    required this.number,
  }) : icon = null;

  const Reviews.withIcon({
    super.key,
    required this.numberText,
    this.icon, required this.number,
    // required this.reviews,
  });
  final String numberText;
  final IconData? icon;
  final String number;
  // final ProductsModel reviews;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null) ...[
          Icon(
            icon!,
            color: AppColors.yellow,
            size: 20,
          )
        ],
        2.w,
        Text(
          number,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        2.w,
        Text(
          numberText,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
