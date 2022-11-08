import 'package:flutter/material.dart';
import 'package:groceryapp/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName ='/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Cart'
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}