import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_colors.dart';

class DetailGreyContainer extends StatelessWidget {
  const DetailGreyContainer({
    super.key,
    this.height,
    this.width,
    // required this.productsItem,
    required this.child, 
    this.border,
  });
  final double? height;
  final double? width;
  final Widget child;
  final Border? border;
  // final ProductsModel productsItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.containerBackground,
        borderRadius: BorderRadius.circular(10),
        border: border,
      ),
      child: child,
    );
  }
}
