import 'package:flutter/material.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/tab/kategori_tab_item.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/tab/kategori_tab_item_view.dart';

class KategoriTabView extends StatefulWidget {
  const KategoriTabView({super.key});

  @override
  State<KategoriTabView> createState() => _KategoriTabViewState();
}

class _KategoriTabViewState extends State<KategoriTabView> {
  KategoriTabItem currentItem = KategoriTabItem.all;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Wrap(
        spacing: 8,
        children: KategoriTabItem.values
            .map(
              (item) => KategoriTabItemView(
                item: item,
                isSelected: item == currentItem,
                onPressed: (item) => setState(() {
                  currentItem = item;
                }),
              ),
            )
            .toList(),
      ),
    );
  }
}
