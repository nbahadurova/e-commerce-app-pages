import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/sizes_model.dart';
import 'package:e_commerce_app/constants/app_colors.dart';
import 'package:e_commerce_app/model/products_model.dart';
import 'package:e_commerce_app/constants/app_paddings.dart';
import 'package:e_commerce_app/extensions/num_extensions.dart';
import 'package:e_commerce_app/ui/pages/widgets/title_text.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/price.dart';
import 'package:e_commerce_app/ui/pages/widgets/clothes_name_widget.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/reviews_star.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/reviews_stocks.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/app_bar_widget.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/buy_now_button.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/size_container.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/line_container.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/description_text.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/reviews_purchased.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/size_description_text.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/detail_grey_container_with_icon.dart';
import 'package:e_commerce_app/ui/pages/details_page/widgets/detail_grey_container_with_image.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    super.key,
    required this.star,
    required this.purchased,
    required this.stocks,
    required this.image,
    required this.price,
    required this.clothesName,
    required this.title,
  });
  final double star;
  final String purchased;
  final String stocks;
  final String image;
  final double price;
  final String clothesName;
  final String title;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final productItems = ProductsModel.productItems;
  final size = SizesModel.sizes;
  final PageController pageController = PageController();
  final PageController listController = PageController();
  int selectedProductIndex = 0;
  int selectedSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), child: AppBarWidget()),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.horizontal10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                child: PageView.builder(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: productItems.length,
                  itemBuilder: (context, index) {
                    return DetailGreyContainerWithImage(
                      productImage: widget.image,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  controller: listController,
                  scrollDirection: Axis.horizontal,
                  itemCount: productItems.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: DetailGreyContainerWithImage(
                            productImage: widget.image,
                            border: index == selectedProductIndex
                                ? Border.all(color: AppColors.orange, width: 2)
                                : Border.all(
                                    color: AppColors.containerBackground,
                                  ),
                          ),
                          onTap: () {
                            setState(() {
                              selectedProductIndex = index;
                              pageController.jumpToPage(index);
                            });
                          },
                        ),
                        16.w,
                      ],
                    );
                  },
                ),
              ),
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClothesNameWidget(clothesName: widget.clothesName),
                  const DetailGreyContainerWithIcon(
                    icon: Icons.favorite_border_outlined,
                  ),
                ],
              ),
              TitleText(text: widget.title),
              10.h,
              Row(
                children: [
                  ReviewsStar(star: widget.star),
                  15.w,
                  const LineContainer(),
                  15.w,
                  ReviewsPurchased(purchased: widget.purchased),
                  15.w,
                  const LineContainer(),
                  15.w,
                  ReviewsStocks(stocks: widget.stocks),
                ],
              ),
              10.h,
              const SizeDescriptionText(
                text: 'Size',
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: size.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SizeContainer(
                            size: size[index],
                            border: index == selectedSizeIndex
                                ? Border.all(color: AppColors.orange, width: 2)
                                : Border.all(
                                    color: AppColors.containerBackground,
                                  ),
                          ),
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = index;
                            });
                          },
                        ),
                        5.w,
                      ],
                    );
                  },
                ),
              ),
              15.h,
              const SizeDescriptionText(text: 'Description Product'),
              15.h,
              const DescriptionText(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Price(
                    productPrice: widget.price,
                  ),
                  const BuyNowButton(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
