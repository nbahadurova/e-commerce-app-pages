import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:e_commerce_app/constants/app_colors.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppTexts.description,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.categoryNames
      ),
    );
  }
}
