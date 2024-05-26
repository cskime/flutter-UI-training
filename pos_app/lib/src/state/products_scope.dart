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
  Map<Product, int> countOfProduct = {};

  void onCountChanged({
    required Product product,
    required int count,
  }) {
    setState(() {
      if (count > 0) {
        countOfProduct = {...countOfProduct, product: count};
      } else {
        final newEntries =
            countOfProduct.entries.where((entry) => entry.key != product);
        countOfProduct = Map.fromEntries(newEntries);
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
