import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';

class TitleText extends StatelessWidget {

  const TitleText({ super.key, required this.text });
  final String text;
   @override
   Widget build(BuildContext context) {
       return Text(text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      textAlign: TextAlign.left,
    );
  }
}