import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/model/top_shop_now_model.dart';
import 'package:e_commerce_app/data/models/products_model.dart';
import 'package:e_commerce_app/cubits/home/products_cubit.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/list_view_box_widget.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key, required this.pageController});
  final items = TopShopNowModel.modelItems;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        controller: pageController,
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ListViewBoxWidget(
            image: items[index].image,
            title: items[index].title,
            modelItems: items[index],
            onPressed: () {},
          );
        },
      ),
    );
  }
}
