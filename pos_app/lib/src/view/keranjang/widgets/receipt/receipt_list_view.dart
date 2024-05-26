import 'package:flutter/material.dart';
import 'package:pos_app/src/state/products_provider.dart';
import 'package:pos_app/src/view/keranjang/widgets/receipt/receipt_empty_list_item.dart';
import 'package:pos_app/src/view/keranjang/widgets/receipt/receipt_total_list_item.dart';

class ReceiptListView extends StatelessWidget {
  const ReceiptListView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = ProductsProvider.of(context);
    return Column(
      children: [
        const ReceiptEmptyListItem(title: 'Diskon'),
        const ReceiptEmptyListItem(title: 'Pelanggan'),
        ReceiptTotalListItem(subtotalRp: provider?.subtotalRp ?? 0),
        const ReceiptEmptyListItem(title: 'SPG'),
      ],
    );
  }
}
