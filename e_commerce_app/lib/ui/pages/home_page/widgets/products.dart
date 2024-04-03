import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/extensions/num_extensions.dart';
import 'package:e_commerce_app/data/models/products_model.dart';
import 'package:e_commerce_app/ui/pages/widgets/grey_container_box.dart';
import 'package:e_commerce_app/ui/pages/widgets/clothes_name_widget.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/home_grey_container.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required this.image,
    required this.title,
    required this.rating,
    required this.price,
    required this.category,
  });
  final String image;
  final String title;
  final double price;
  final double rating;
  final String category;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          HomeGreyContainer(
            height: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  image,
                  height: 100,
                  width: 60,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.favorite_border),
                  ],
                ),
              ],
            ),
          ),
          6.h,
          ClothesNameWidget(clothesName: category),
          5.h,
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 12),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: AppColors.yellow,
                    size: 19,
                  ),
                  Text(
                    rating.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                price.toString(),
                style: const TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
