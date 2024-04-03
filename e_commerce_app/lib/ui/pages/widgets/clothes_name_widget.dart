import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';

class ClothesNameWidget extends StatelessWidget {
  const ClothesNameWidget({
    super.key,
    required this.clothesName,
  });
  final String clothesName;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.orange),
            child: Center(
              child: Padding(
                padding: AppPaddings.left5 + AppPaddings.right5,
                child: Text(
                  clothesName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppColors.white, fontSize: 8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
