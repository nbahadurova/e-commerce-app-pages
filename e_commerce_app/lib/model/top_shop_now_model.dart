import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_images.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class TopShopNowModel {
  const TopShopNowModel({
    required this.image,
    required this.title,
    required this.buttonText,
    required this.backGroundColor,
  });
  final String image;
  final String title;
  final String buttonText;
  final Color backGroundColor;

  static const List<TopShopNowModel> modelItems = [
    TopShopNowModel(
      image: AppImages.listViewImage1,
      title: 'Get your special\nsale up to 50%',
      buttonText: 'Shop Now',
      backGroundColor: AppColors.orange,
    ),
    TopShopNowModel(
        image: AppImages.listViewImage2,
        title: 'Get your special\nsale up to 50%',
        buttonText: 'Shop Now',
        backGroundColor: AppColors.blue),
  ];
}
