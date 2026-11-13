
class Product {
  final String name;
  final String imageUrl;
  final bool hasPromo;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.hasPromo,
  });
}


  final List<Product> productList = const [
    Product(
      name: 'Ride ',
      imageUrl: 'https://via.placeholder.com/150',
      hasPromo: true,
    ),
    Product(
      name: 'Delivery ',
      imageUrl: 'https://via.placeholder.com/150',
      hasPromo: false,
    ),
    Product(
      name: 'Trip ',
      imageUrl: 'https://via.placeholder.com/150',
      hasPromo: true,
    ),
    Product(
      name: 'Food ',
      imageUrl: 'https://via.placeholder.com/150',
      hasPromo: false,
    ),
    Product(
      name: 'Grocery ',
      imageUrl: 'https://via.placeholder.com/150',
      hasPromo: false,
    ),
    Product(
      name: 'Mart ',
      imageUrl: 'https://via.placeholder.com/150',
      hasPromo: false,
    ),
    Product(
      name: 'Package ',
      imageUrl: 'https://via.placeholder.com/150',
      hasPromo: false,
    ),
    Product(
      name: 'More ',
      imageUrl: 'https://via.placeholder.com/150',
      hasPromo: true,
    ),
  ];