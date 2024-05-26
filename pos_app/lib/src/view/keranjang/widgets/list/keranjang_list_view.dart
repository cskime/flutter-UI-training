import 'package:flutter/material.dart';
import 'package:pos_app/src/state/products_provider.dart';
import 'package:pos_app/src/view/keranjang/widgets/list/keranjang_list_item_view.dart';

class KeranjangListView extends StatelessWidget {
  const KeranjangListView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = ProductsProvider.of(context);
    final children = provider?.countOfProduct.entries.indexed
        .map(
          (element) => KeranjangListItemView(
            product: element.$2.key,
            currentCount: element.$2.value,
            onCountChanged: provider.onCountChanged,
            isFirstItem: element.$1 == 0,
          ),
        )
        .toList();
    return Column(children: children ?? []);
  }
}
