import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_texts.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/model/top_shop_now_model.dart';
import 'package:e_commerce_app/extensions/material_state_property_all_extension.dart';

class ListViewBoxWidget extends StatelessWidget {
  const ListViewBoxWidget({
    super.key,
    required this.onPressed,
    required this.title,
    required this.image,
    required this.modelItems,
  });
  final TopShopNowModel modelItems;
  final void Function() onPressed;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.right10,
      child: Container(
        decoration: BoxDecoration(
            color: modelItems.backGroundColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Padding(
              padding: AppPaddings.left15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: AppColors.black.mspAll,
                      ),
                      onPressed: onPressed,
                      child: const Text(
                        AppTexts.shopNow,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 15,
                        ),
                      ))
                ],
              ),
            ),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
