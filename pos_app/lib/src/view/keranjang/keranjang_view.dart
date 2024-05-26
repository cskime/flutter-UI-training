import 'package:flutter/material.dart';
import 'package:pos_app/design/components/back_button.dart';
import 'package:pos_app/design/components/link_button.dart';
import 'package:pos_app/design/components/pos_button/pos_button.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/utils/build_context_navigator_ext.dart';
import 'package:pos_app/src/utils/separated_row.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/widgets/penjualan_search_bar.dart';
import 'package:pos_app/src/view/keranjang/widgets/list/keranjang_list_view.dart';
import 'package:pos_app/src/view/keranjang/widgets/receipt/receipt_list_view.dart';

class KeranjangView extends StatelessWidget {
  const KeranjangView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BaseScreen(
        header: BaseAppBar(
          title: 'Penjualan',
          leading: context.canPop ? const POSBackButton() : null,
          trailing: SvgIconProvider.icon('icon-note'),
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: PenjualanSearchBar(),
            ),
            SizedBox(height: 4),
            KeranjangListView(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LinkButton(title: 'Rubah Harga'),
                  LinkButton(title: 'Simpan Pesanan'),
                ],
              ),
            ),
            ReceiptListView(),
          ],
        ),
        footer: Padding(
          padding: const EdgeInsets.all(16),
          child: SeparatedRow(
            spacing: 15,
            children: [
              Expanded(
                child: POSButton(
                  style: POSButtonStyle.secondary,
                  title: 'Custom',
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: POSButton(
                  style: POSButtonStyle.primary,
                  title: 'Konfirmasi',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
