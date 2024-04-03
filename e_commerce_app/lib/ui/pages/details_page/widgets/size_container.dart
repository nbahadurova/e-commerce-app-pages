import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/sizes_model.dart';
import 'package:e_commerce_app/ui/pages/widgets/grey_container_box.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/detail_grey_container.dart';

class SizeContainer extends StatelessWidget {
  const SizeContainer({
    super.key,
    required this.size,
    this.border,
  });
  final SizesModel size;
  final Border? border;
  @override
  Widget build(BuildContext context) {
    return DetailGreyContainer(
      border: border,
      width: 70,
      child: Center(
        child: Text(
          size.size,
          style: const TextStyle(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
