import 'package:flutter/material.dart';
import 'package:pos_app/models/product.dart';
import 'package:pos_app/src/state/products_provider.dart';

class ProductsScope extends StatefulWidget {
  const ProductsScope({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<ProductsScope> createState() => _ProductsScopeState();
}

class _ProductsScopeState extends State<ProductsScope> {
  final Map<Product, int> countOfProduct = {};

  void onCountChanged({
    required Product product,
    required int count,
  }) {
    setState(() {
      if (count > 0) {
        countOfProduct[product] = count;
      } else {
        countOfProduct.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProductsProvider(
      countOfProduct: countOfProduct,
      onCountChanged: onCountChanged,
      child: widget.child,
    );
  }
}
