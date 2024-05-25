import 'package:flutter/material.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/models/product.dart';
import 'package:pos_app/src/state/products_provider.dart';
import 'package:pos_app/src/utils/build_context_navigator_ext.dart';
import 'package:pos_app/src/view/base/base_app_bar.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/widgets/barang_keranjang_button.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/widgets/barang_product_card_view.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/widgets/barang_product_total_label.dart';
import 'package:pos_app/src/view/beranda/widgets/penjualan_search_bar.dart';
import 'package:pos_app/src/view/common/widgets/back_button.dart';
import 'package:pos_app/src/view/keranjang/keranjang_view.dart';

class PenjualanBarangView extends StatefulWidget {
  const PenjualanBarangView({super.key});

  static const horizontalInset = 16.0;
  static const spacing = 15.0;

  @override
  State<PenjualanBarangView> createState() => _PenjualanBarangViewState();
}

class _PenjualanBarangViewState extends State<PenjualanBarangView> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final itemWidth = (screenWidth -
            PenjualanBarangView.horizontalInset * 2 -
            PenjualanBarangView.spacing) /
        2;
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
                children: dummyProducts
                    .map(
                      (product) => BarangProductCardView(
                        product: product,
                        width: itemWidth,
                        onCountChanged: (count) => setState(() {
                          ProductsProvider.of(context)?.onCountChanged(
                            product: product,
                            count: count,
                          );
                        }),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
        footer: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              BarangProductTotalLabel(
                count: ProductsProvider.of(context)?.numberOfProducts ?? 0,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: BarangKeranjangButton(
                  onPressed: () => context.push(const KeranjangView()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
