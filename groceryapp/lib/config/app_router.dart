import 'package:flutter/material.dart';
import 'package:groceryapp/screens/cart/cart_screen.dart';
import 'package:groceryapp/screens/catalog/catalog_screen.dart';
import 'package:groceryapp/screens/home/home_screen.dart';
import 'package:groceryapp/screens/product/product_screen.dart';
import 'package:groceryapp/screens/wishlist/wishlist_screen.dart';




class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name} ');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error')),
      ),
    );   
  }
}