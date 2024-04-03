import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_colors.dart';

class HomeGreyContainer extends StatelessWidget {
  const HomeGreyContainer({
    super.key,
    this.height,
    this.width, required this.child,
  });
  final double? height;
  final double? width;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          color: AppColors.containerBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      child: child,
    );
  }
}
