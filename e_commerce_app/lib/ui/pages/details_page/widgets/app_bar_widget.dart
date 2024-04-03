import 'package:flutter/material.dart';
import 'package:e_commerce_app/extensions/num_extensions.dart';
import 'package:e_commerce_app/ui/pages/widgets/grey_container_box.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/detail_grey_container_with_icon.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Text(
          'Detail',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      actions: [
        Row(
          children: [
            const DetailGreyContainerWithIcon(
              icon: Icons.share,
            ),
            6.w,
            const DetailGreyContainerWithIcon(
              icon: Icons.message_outlined,
            ),
          ],
        )
      ],
    );
  }
}
