import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/detail_grey_container.dart';

class DetailGreyContainerWithImage extends StatelessWidget {
  const DetailGreyContainerWithImage({
    super.key,
    required this.productImage,
    this.border,
  });
  final String productImage;
  final Border? border;
  @override
  Widget build(BuildContext context) {
    return DetailGreyContainer(
      height: 40,
      width: 80,
      border: border,
      child: Image.network(productImage),
    );
  }
}
