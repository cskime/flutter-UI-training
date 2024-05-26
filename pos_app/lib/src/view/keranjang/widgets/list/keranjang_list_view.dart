import 'package:flutter/material.dart';
import 'package:pos_app/src/state/products_provider.dart';
import 'package:pos_app/src/view/keranjang/widgets/list/keranjang_list_item_view.dart';

class KeranjangListView extends StatelessWidget {
  const KeranjangListView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = ProductsProvider.of(context);
    final children = provider?.countOfProduct.entries
        .map(
          (element) => KeranjangListItemView(
            product: element.key,
            currentCount: element.value,
            onCountChanged: provider.onCountChanged,
          ),
        )
        .toList();
    return Column(children: children ?? []);
  }
}
