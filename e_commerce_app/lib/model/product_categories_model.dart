// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductCategoriesModel {
   const ProductCategoriesModel({
    required this.text,
  });
  final String text;

  static const List<ProductCategoriesModel> products = [
    ProductCategoriesModel(text: 'All'),
    ProductCategoriesModel(text: 'Hoodie'),
    ProductCategoriesModel(text: 'Jacket'),
    ProductCategoriesModel(text: 'Pants'),
    ProductCategoriesModel(text: 'T-Shirt'),
    ProductCategoriesModel(text: 'Shirt'),
    ProductCategoriesModel(text: 'Outerwear'),
    ProductCategoriesModel(text: 'Acccc'),
  ];
}
