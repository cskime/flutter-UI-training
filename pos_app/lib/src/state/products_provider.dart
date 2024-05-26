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

  int get subtotalRp => countOfProduct.entries.fold(
        0,
        (previousValue, element) =>
            previousValue + element.key.rp * element.value,
      );

  @override
  bool updateShouldNotify(covariant ProductsProvider oldWidget) {
    return countOfProduct != oldWidget.countOfProduct;
  }

  static ProductsProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProductsProvider>();
  }
}
