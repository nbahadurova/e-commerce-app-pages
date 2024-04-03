import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/extensions/material_state_property_all_extension.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: AppColors.orange.mspAll,
            shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)))
                .mspAll,
          ),
          onPressed: () {},
          child: const Icon(
            Icons.delete,
            color: AppColors.white,
            size: 26,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: AppColors.black.mspAll,
            shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)))
                .mspAll,
          ),
          onPressed: () {},
          child: const Text(
            'Buy Now',
            style: TextStyle(color: AppColors.white, fontSize: 20),
          ),
        )
      ],
    );
  }
}
