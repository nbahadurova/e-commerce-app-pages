import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_colors.dart';

class LineContainer extends StatelessWidget {

  const LineContainer({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
                  width: 2,
                  height: 14,
                  color: AppColors.categoryNames,
                );
  }
}