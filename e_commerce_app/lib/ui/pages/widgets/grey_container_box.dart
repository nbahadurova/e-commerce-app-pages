import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_colors.dart';

class GreyContainerBox extends StatelessWidget {
  const GreyContainerBox({
    super.key,
    this.height,
    required this.child,
    this.width,
  });
  final double? height;
  final Widget child;
  final double? width;
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
