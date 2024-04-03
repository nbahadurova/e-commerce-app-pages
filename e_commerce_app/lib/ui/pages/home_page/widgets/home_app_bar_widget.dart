import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/extensions/num_extensions.dart';
import 'package:e_commerce_app/ui/pages/widgets/search_bar_widget.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/detail_grey_container_with_icon.dart';

class HomeAppBarWidget extends StatelessWidget {

  const HomeAppBarWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: AppPaddings.horizontal10,
         child: AppBar(
          actions: [
            const SearchBarWidget(),
            6.w,
            const DetailGreyContainerWithIcon(icon: Icons.notification_add_outlined),
            6.w,
            const DetailGreyContainerWithIcon(icon: Icons.shopping_cart_outlined),
          ],
         ),
       );
  }
}