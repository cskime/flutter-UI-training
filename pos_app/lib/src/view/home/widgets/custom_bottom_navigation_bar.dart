import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/design/svg_icon_provider.dart';
import 'package:pos_app/src/view/home/widgets/custom_bottom_navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final itemWidth = mediaQuery.size.width / 5;
    final bottomPadding = mediaQuery.viewPadding.bottom;
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      CustomBottomNavigationBarItem(
                        iconName: 'icon-beranda',
                        title: 'Beranda',
                        color: Palette.grey,
                        onPressed: () {},
                      ),
                      CustomBottomNavigationBarItem(
                        iconName: 'icon-rekap-kas',
                        title: 'Rekap Kas',
                        color: Palette.grey,
                        onPressed: () {},
                      ),
                      const Spacer(),
                      CustomBottomNavigationBarItem(
                        iconName: 'icon-keranjang',
                        title: 'Keranjang',
                        color: Palette.grey,
                        onPressed: () {},
                      ),
                      CustomBottomNavigationBarItem(
                        iconName: 'icon-akun',
                        title: 'Akun',
                        color: Palette.grey,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Palette.primary,
                  borderRadius: BorderRadius.circular(100),
                ),
                width: itemWidth,
                height: itemWidth,
                clipBehavior: Clip.hardEdge,
                child: Center(
                  child: SvgIconProvider.icon(
                    'icon-scan',
                    width: itemWidth * 0.3,
                    height: itemWidth * 0.3,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: bottomPadding,
          child: const ColoredBox(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
