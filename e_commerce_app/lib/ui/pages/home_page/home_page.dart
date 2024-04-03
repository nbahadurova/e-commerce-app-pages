import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/model/top_shop_now_model.dart';
import 'package:e_commerce_app/extensions/num_extensions.dart';
import 'package:e_commerce_app/cubits/home/products_cubit.dart';
import 'package:e_commerce_app/model/product_categories_model.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/products.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/dot_indicator.dart';
import 'package:e_commerce_app/ui/pages/widgets/bottom_navigation_bar_widget.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/home_app_bar_widget.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/product_categories_view.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/list_view_builder_widget.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/products_grid_view_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40), child: HomeAppBarWidget()),
      body: Padding(
        padding: AppPaddings.left12 + AppPaddings.top14,
        child: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state is ProductsInitial || state is ProductsLoading) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else {
              return ListView(
                children: [
                  ListViewBuilderWidget(
                    pageController: pageController,
                  ),
                  10.h,
                  Center(child: DotIndicator(pageController: pageController)),
                  20.h,
                  const ProductCategoriesView(),
                ],
              );
            }
            
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
