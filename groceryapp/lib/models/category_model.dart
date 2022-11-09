
import 'package:equatable/equatable.dart';

class Category extends Equatable {

  final String name;
  final String imageUrl;

  const Category({

    required this.name,
    required this.imageUrl,

  });


  @override
  
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [

    Category(
      name: 'Fruit',
      imageUrl: 'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'
    ),

    Category(
      name: 'Drink',
      imageUrl: 'https://images.unsplash.com/photo-1545334894-9c7a7ccefaf8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80'
    ),

    Category(
      name: 'Sandwich',
      imageUrl: 'https://images.unsplash.com/photo-1553909489-cd47e0907980?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80'
    ),

    Category(
      name: 'Cereal',
      imageUrl: 'https://images.unsplash.com/photo-1622711321771-4a00d2bc0350?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'
    ),

  ];
  
}