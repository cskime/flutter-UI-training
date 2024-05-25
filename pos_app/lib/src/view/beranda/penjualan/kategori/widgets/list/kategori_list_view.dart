import 'package:flutter/material.dart';
import 'package:pos_app/src/utils/build_context_navigator_ext.dart';
import 'package:pos_app/src/utils/separated_column.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/penjualan_barang_view.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/list/kategori_list_item.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/list/kategori_list_item_view.dart';

class KategoriListView extends StatelessWidget {
  const KategoriListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SeparatedColumn(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: KategoriListItem.values
            .map(
              (item) => KategoriListItemView(
                item: item,
                onPressed: (item) => context.push(const PenjualanBarangView()),
              ),
            )
            .toList(),
      ),
    );
  }
}
