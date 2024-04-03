import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/reviews.dart';

class ReviewsStocks extends StatelessWidget {

  const ReviewsStocks({ super.key, required this.stocks });
  final String stocks;
   @override
   Widget build(BuildContext context) {
       return Reviews(numberText: 'Stocks', number: stocks);
  }
}