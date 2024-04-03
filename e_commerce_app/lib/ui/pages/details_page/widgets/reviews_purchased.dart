import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/reviews.dart';

class ReviewsPurchased extends StatelessWidget {

  const ReviewsPurchased({ super.key, required this.purchased });
  final String purchased;
   @override
   Widget build(BuildContext context) {
       return Reviews(numberText: '(Purchased)', number: purchased);
  }
}