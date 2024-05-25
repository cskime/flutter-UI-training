import 'package:flutter/material.dart';
import 'package:pos_app/src/view/keranjang/widgets/list/keranjang_list_item_view.dart';

class KeranjangListView extends StatelessWidget {
  const KeranjangListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        KeranjangListItemView(),
        KeranjangListItemView(),
        KeranjangListItemView(),
      ],
    );
  }
}
