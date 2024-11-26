class Product {
  String name;
  String imageAsset;
  int price;
  String description;
  num rating;

  Product({
    required this.name,
    required this.imageAsset,
    required this.price,
    required this.description,
    required this.rating,
  });
}

var productList = [
  Product(
    name: 'Lenovo Legion 5',
    imageAsset: 'images/legion.png',
    price: 22700000,
    description: 'Lenovo Legion adalah kasta tertinggi brand laptop lenovo.',
    rating: 8.3,
  ),
  Product(
    name: 'Asus ROG Strix',
    imageAsset: 'images/rog.png',
    price: 26400000,
    description: 'Asus ROG Strix adalah brand asus dengan popularitas terbanyak.',
    rating: 9.6,
  ),
  Product(
    name: 'Acer Predator',
    imageAsset: 'images/acerpredator.png',
    price: 24500000,
    description:
        'Acer Predator adalah brand milik acer yg baru baru ini mengagetkan user acer.',
    rating: 7.3,
  ),
  Product(
    name: 'Hp Victus 16',
    imageAsset: 'images/victus.png',
    price: 1863000,
    description: 'Hp Victus adalah laptop yang sering di katakan dana pelajar.',
    rating: 6.0,
  ),
];
