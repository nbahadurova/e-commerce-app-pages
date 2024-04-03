// ignore_for_file: public_member_api_docs, sort_constructors_first

class SizesModel {
  const SizesModel({
    required this.size,
  });
  final String size;
  
  static const List<SizesModel> sizes = [
    SizesModel(size: 'S'),
    SizesModel(size: 'M'),
    SizesModel(size: 'L'),
    SizesModel(size: 'XL'),
    SizesModel(size: 'XXL'),
  ];
}
