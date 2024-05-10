import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/home/widgets/alert_dot.dart';
import 'package:pos_app/src/view/home/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:pos_app/src/view/home/widgets/image_carousel.dart';
import 'package:pos_app/src/view/home/widgets/menu/menu.dart';
import 'package:pos_app/src/view/home/widgets/menu/menu_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentBottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar,
      body: _body,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  AppBar get _appBar {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      title: const DefaultTextStyle(
        style: TextStyle(), // Use default font family in AppBar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: TextStyle(
                color: Color(0xff222831),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'kasir Toko A',
              style: TextStyle(
                color: Color(0xff7c7c7c),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Stack(
            children: [
              SvgIconProvider.icon('alert', color: Palette.text),
              const Positioned(
                top: 3,
                right: 4,
                child: AlertDot(),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget get _body {
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
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
                            children: const [
                              MenuItem(menu: Menu.penjualan),
                              MenuItem(menu: Menu.penyimpanan),
                              MenuItem(menu: Menu.pelanggan),
                              MenuItem(menu: Menu.pegawai),
                              MenuItem(menu: Menu.produk),
                              MenuItem(menu: Menu.laporan),
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
        ),
      ],
    );
  }
}
