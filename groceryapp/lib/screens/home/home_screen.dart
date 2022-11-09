import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/models/category_model.dart';
import 'package:groceryapp/models/product_model.dart';
import 'package:groceryapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Grocery App'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: Category.categories
            .map((category) => CarouselCard(category: category))
            .toList(),
          ),
          ),
          SectionTitle(title: 'RECOMMENDED'),
          ProductCarousel(
            products: Product.products
            .where((product) => product.isRecommended)
            .toList()),
          SectionTitle(title: 'POPULAR'),
          ProductCarousel(
            products: Product.products
            .where((product) => product.isPopular)
            .toList()),
        ],
      ),
    );
  }
}







