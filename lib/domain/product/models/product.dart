enum ProductType { sell, rent }

class Product {
  final int id;
  final String brandName;
  final String title;
  final int price;
  final ProductType type;

  final List<String> images;

  const Product({
    required this.id,
    required this.brandName,
    required this.title,
    required this.price,
    required this.type,
    required this.images,
  });

  bool get isSell => type == 'sell';

  bool get isRent => !isSell;
}
