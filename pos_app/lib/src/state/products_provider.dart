import 'package:flutter/material.dart';
import 'package:pos_app/models/product.dart';

class ProductsProvider extends InheritedWidget {
  const ProductsProvider({
    super.key,
    required super.child,
    required this.countOfProduct,
    required this.onCountChanged,
  });

  final Map<Product, int> countOfProduct;
  final void Function({
    required Product product,
    required int count,
  }) onCountChanged;

  int get numberOfProducts => countOfProduct.entries.length;

  @override
  bool updateShouldNotify(covariant ProductsProvider oldWidget) {
    return countOfProduct != oldWidget.countOfProduct;
  }

  static ProductsProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProductsProvider>();
  }
}
