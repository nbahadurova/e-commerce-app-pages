import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/data/models/products_model.dart';
import 'package:e_commerce_app/cubits/home/products_cubit.dart';
import 'package:e_commerce_app/model/product_categories_model.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/jewelery_products.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/product_categories.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/electronics_products.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/list_view_box_widget.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/men_s_clothing_products.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/women_s_clothing_products.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/products_grid_view_builder.dart';

class ProductCategoriesView extends StatefulWidget {
  const ProductCategoriesView({super.key});

  @override
  State<ProductCategoriesView> createState() => _ProductCategoriesViewState();
}

class _ProductCategoriesViewState extends State<ProductCategoriesView> {
  // final items = ProductCategoriesModel.products;
  Color selectedColor = AppColors.orange;
  Color defaultColor = AppColors.categoryNames;
  bool isTapped = true;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state is ProductsNetworkError) {
              return Text(state.message);
            } else if (state is ProductsFailure) {
              return Text(state.message);
            } else if (state is ProductsSuccess) {
              final List<Welcome> items = state.response;
              List<String> categories = items
                  .map((item) => item.category.toString())
                  .toSet()
                  .toList();
              return SizedBox(
                height: 20,
                child: GestureDetector(
                  child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: ProductCategories(
                          color: index == selectedIndex
                              ? selectedColor
                              : defaultColor,
                          text:
                              categories[index].split('.').last,
                        ),
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
        selectedIndex == 0
            ? const MenSClothingProducts()
            : selectedIndex == 1
                ? const JeweleryProducts()
                : selectedIndex == 2
                    ? const ElectronicsProducts()
                    : const WomenSClothingProducts(),
      ],
    );
  }
}
