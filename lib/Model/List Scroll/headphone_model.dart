import 'dart:ui';


class Product {
  final Color color;
  final String image;

  Product({required this.color, required this.image});
}

List<Product> products = [
Product(
  color: const Color.fromARGB(255, 138, 40, 40), 
  image: 'assets/images/choso1.jpg'),
Product(
  color: const Color.fromARGB(255, 117, 151, 224), 
  image: 'assets/images/choso2.jpg'),
Product(
  color: const Color.fromARGB(255, 216, 179, 77), 
  image: 'assets/images/choso3.jpg'),

];
