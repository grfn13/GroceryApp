import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({

    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,

  });


  @override
  List<Object?> get props => [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [

    Product(
      name: 'Banana',
      category: 'Fruit',
      imageUrl: 'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      price: 1.25,
      isRecommended: false,
      isPopular: true,
    ),

    Product(
      name: 'Gatorade',
      category: 'Drink',
      imageUrl: 'https://images.unsplash.com/photo-1545334894-9c7a7ccefaf8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80',
      price: 2.25,
      isRecommended: true,
      isPopular: true,
    ),

    Product(
      name: 'Milk',
      category: 'Drink',
      imageUrl: 'https://images.unsplash.com/photo-1576186726115-4d51596775d1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
      price: 1.99,
      isRecommended: false,
      isPopular: true,
    ),

    Product(
      name: 'Sandwich',
      category: 'Sandwich',
      imageUrl: 'https://images.unsplash.com/photo-1553909489-cd47e0907980?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
      price: 4.99,
      isRecommended: true,
      isPopular: true,
    ),

    Product(
      name: 'Cereal',
      category: 'Cereal',
      imageUrl: 'https://images.unsplash.com/photo-1622711321771-4a00d2bc0350?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
      price: 3.99,
      isRecommended: true,
      isPopular: true,
    ),

  ];

}