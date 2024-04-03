import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_colors.dart';

class DetailGreyContainerWithIcon extends StatelessWidget {
  const DetailGreyContainerWithIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      width: 34,
      decoration: const BoxDecoration(
        color: AppColors.containerBackground,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: AppColors.black,
      ),
    );
  }
}
