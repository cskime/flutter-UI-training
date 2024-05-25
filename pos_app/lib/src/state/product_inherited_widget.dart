import 'package:flutter/material.dart';
import 'package:pos_app/models/product.dart';

class ProductInheritedWidget extends InheritedWidget {
  const ProductInheritedWidget({
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
  bool updateShouldNotify(covariant ProductInheritedWidget oldWidget) {
    return countOfProduct != oldWidget.countOfProduct;
  }

  static ProductInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProductInheritedWidget>();
  }
}
