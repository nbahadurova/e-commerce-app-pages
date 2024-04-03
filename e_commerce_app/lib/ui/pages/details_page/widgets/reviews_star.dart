import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/reviews.dart';

class ReviewsStar extends StatelessWidget {
  const ReviewsStar({super.key, required this.star});
  final double star;
  @override
  Widget build(BuildContext context) {
    return Reviews.withIcon(
      icon: Icons.star,
      numberText: '(100 Reviews)',
      number: star.toString(),
    );
  }
}
