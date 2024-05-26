import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pos_app/src/utils/build_context_navigator_ext.dart';
import 'package:pos_app/src/view/base/base_screen.dart';
import 'package:pos_app/src/view/beranda/laporan/laporan_view.dart';
import 'package:pos_app/src/view/beranda/penjualan/kategori/penjualan_kategori_view.dart';
import 'package:pos_app/src/view/beranda/widgets/beranda_app_bar.dart';
import 'package:pos_app/src/view/beranda/widgets/image_carousel.dart';
import 'package:pos_app/src/view/beranda/widgets/menu/menu.dart';
import 'package:pos_app/src/view/beranda/widgets/menu/menu_item.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({super.key});

  @override
  State<BerandaView> createState() => _BerandaViewState();
}

class _BerandaViewState extends State<BerandaView> {
  int currentBottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Column(
        children: [
          const BerandaAppBar(),
          const SizedBox(height: 12),
          const SizedBox(
            height: 150,
            child: ImageCarousel(),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Menu Kategori',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 32,
                      child: StaggeredGrid.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        children: [
                          MenuItem(
                            menu: Menu.penjualan,
                            onPressed: () =>
                                context.push(const PenjualanKategoriView()),
                          ),
                          const MenuItem(menu: Menu.penyimpanan),
                          const MenuItem(menu: Menu.pelanggan),
                          const MenuItem(menu: Menu.pegawai),
                          const MenuItem(menu: Menu.produk),
                          MenuItem(
                            menu: Menu.laporan,
                            onPressed: () => context.push(const LaporanView()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
