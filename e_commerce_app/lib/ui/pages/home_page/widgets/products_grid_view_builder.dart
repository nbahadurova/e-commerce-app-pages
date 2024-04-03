import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/model/top_shop_now_model.dart';
import 'package:e_commerce_app/data/models/products_model.dart';
import 'package:e_commerce_app/cubits/home/products_cubit.dart';
import 'package:e_commerce_app/ui/pages/details_page/details_page.dart';
import 'package:e_commerce_app/ui/pages/home_page/widgets/products.dart';

class ProductsGridViewBuilder extends StatelessWidget {
  const ProductsGridViewBuilder({super.key});
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

            return SizedBox(
              height: 370,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    mainAxisExtent: 235,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Products(
                      image: state.response[index].image!,
                      rating: state.response[index].rating?.rate ?? 0.0,
                      title: state.response[index].title!,
                      price: state.response[index].price!,
                      category: state.response[index].category
                          .toString()
                          .split('.')
                          .last,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              star: state.response[index].rating?.rate ?? 0.0,
                              clothesName: state.response[index].category
                                  .toString()
                                  .split('.')
                                  .last,
                              image: state.response[index].image!,
                              price: state.response[index].price!,
                              purchased: productItems[index].purchased,
                              stocks: productItems[index].stocks,
                              title: state.response[index].title!,
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
