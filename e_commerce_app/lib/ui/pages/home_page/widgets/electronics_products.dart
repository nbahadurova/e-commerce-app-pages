import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/model/top_shop_now_model.dart';
import 'package:e_commerce_app/data/models/products_model.dart';
import 'package:e_commerce_app/cubits/home/products_cubit.dart';
import 'package:e_commerce_app/ui/pages/details_page/details_page.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/products.dart';

class ElectronicsProducts extends StatelessWidget {
  const ElectronicsProducts({super.key});
  final items = TopShopNowModel.modelItems;
  final productItems = ProductsModel.productItems;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.right12,
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state is ProductsNetworkError) {
            return Text(state.message);
          } else if (state is ProductsFailure) {
            return Text(state.message);
          } else if (state is ProductsSuccess) {
            final List<Welcome> items = state.response;
            final filteredItems = items
                .where((item) => item.category == Category.ELECTRONICS)
                .toList();
          
            return SizedBox(
              height: 370,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: filteredItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    mainAxisExtent: 235,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Products(
                      image: filteredItems[index].image!,
                      rating: filteredItems[index].rating?.rate ?? 0.0,
                      title: filteredItems[index].title!,
                      price: filteredItems[index].price!,
                      category: filteredItems[index].category
                          .toString()
                          .split('.')
                          .last,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              star: filteredItems[index].rating?.rate ?? 0.0,
                              clothesName: state.response[index].category
                                  .toString()
                                  .split('.')
                                  .last,
                              image: filteredItems[index].image!,
                              price: filteredItems[index].price!,
                              purchased: productItems[index].purchased,
                              stocks: productItems[index].stocks,
                              title: filteredItems[index].title!,
                            ),
                          ));
                    },
                  );
                },
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
