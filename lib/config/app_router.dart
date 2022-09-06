import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/screens/cart/cart_screen.dart';
import 'package:flutter_ecommerce_app/screens/home/home_screen.dart';
import 'package:flutter_ecommerce_app/screens/product/product_screen.dart';
import 'package:flutter_ecommerce_app/screens/wishlist/wishlist_screen.dart';

import '../screens/catalog/catalog_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      case WishListScreen.routeName:
        return WishListScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
      ),
    );
  }
}
