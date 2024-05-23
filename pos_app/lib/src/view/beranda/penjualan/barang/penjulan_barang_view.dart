import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/model/barang_item.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/widgets/barang_list_item_view.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/widgets/barang_masuk_button.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/widgets/barang_total_count_label.dart';
import 'package:pos_app/src/view/beranda/widgets/penjualan_search_bar.dart';
import 'package:pos_app/src/view/common/back_button.dart';

class PenjulanBarangView extends StatelessWidget {
  const PenjulanBarangView({super.key});

  static const horizontalInset = 16.0;
  static const spacing = 15.0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final itemWidth = (screenWidth - horizontalInset * 2 - spacing) / 2;
    return Scaffold(
      backgroundColor: Colors.white,
      body: BaseScreen(
        header: BaseAppBar(
          title: 'Penjualan',
          leading: const POSBackButton(),
          trailing: SvgIconProvider.icon('icon-filter'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: PenjualanSearchBar(),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Wrap(
                spacing: 15,
                runSpacing: 15,
                children: dummyBarangItems
                    .map(
                      (item) => BarangListItemView(
                        item: item,
                        width: itemWidth,
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
        footer: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const BarangTotalCountLabel(count: 0),
              const SizedBox(width: 16),
              Expanded(
                  child: BarangMasukButton(
                onPressed: () {},
              )),
            ],
          ),
        ),
      ),
    );
  }
}
