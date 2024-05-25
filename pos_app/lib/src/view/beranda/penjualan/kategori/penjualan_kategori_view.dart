import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/list/kategori_list_view.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/widgets/tab/kategori_tab_view.dart';
import 'package:pos_app/src/view/beranda/widgets/penjualan_search_bar.dart';
import 'package:pos_app/src/view/common/widgets/back_button.dart';

class PenjualanKategoriView extends StatelessWidget {
  const PenjualanKategoriView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BaseScreen(
        safeAreaBottom: false,
        header: BaseAppBar(
          title: 'Kategori',
          leading: const POSBackButton(),
          trailing: SvgIconProvider.icon('icon-cart'),
        ),
        body: const Column(
          children: [
            KategoriTabView(),
            Padding(
              padding: EdgeInsets.all(16),
              child: PenjualanSearchBar(),
            ),
            KategoriListView(),
          ],
        ),
      ),
    );
  }
}
