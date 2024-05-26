class Product {
  final String name;
  final String description;
  final int price;
  final String image;
  bool isSelected;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    this.isSelected = false,
  });
}

List<Product> products = [
  Product(
    name: 'Produk 1',
    description: 'Deskripsi Produk 1',
    price: 10000,
    image: 'https://via.placeholder.com/150',
  ),
  Product(
    name: 'Produk 2',
    description: 'Deskripsi Produk 2',
    price: 20000,
    image: 'https://via.placeholder.com/150',
  ),
  // Add more products here
];
