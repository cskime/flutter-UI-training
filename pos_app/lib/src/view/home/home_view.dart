import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pos_app/src/view/home/widgets/home_app_bar.dart';
import 'package:pos_app/src/view/home/widgets/menu_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
  }

  PageController _pageController(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    const itemWidth = 311;
    const itemPadding = 8;
    return PageController(
      viewportFraction: (2 * itemPadding + itemWidth) / width,
    );
  }

  @override
  Widget build(BuildContext context) {
    pageController = _pageController(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeAppBar(),
              const SizedBox(height: 12),
              SizedBox(
                height: 150,
                child: PageView.builder(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Image.asset(
                    'assets/images/carousel-item.png',
                  ),
                ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
