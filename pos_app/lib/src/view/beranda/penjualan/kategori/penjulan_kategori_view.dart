import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/utils/build_context_navigator_ext.dart';
import 'package:pos_app/src/utils/separated_column.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/penjulan_barang_view.dart';
import 'package:pos_app/src/view/beranda/widgets/list/kategori_list_item.dart';
import 'package:pos_app/src/view/beranda/widgets/list/kategori_list_item_view.dart';
import 'package:pos_app/src/view/beranda/widgets/penjualan_search_bar.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/tab/tab_view.dart';

class PenjulanKategoriView extends StatelessWidget {
  const PenjulanKategoriView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BaseScreen(
        safeAreaBottom: false,
        child: Column(
          children: [
            BaseAppBar(
              title: 'Kategori',
              leading: const BackButton(),
              trailing: SvgIconProvider.icon('icon-cart'),
            ),
            const TabView(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: PenjualanSearchBar(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SeparatedColumn(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: KategoriListItem.values
                    .map(
                      (item) => KategoriListItemView(
                        item: item,
                        onPressed: (item) =>
                            context.push(const PenjulanBarangView()),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
