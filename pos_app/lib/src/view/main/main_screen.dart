import 'package:flutter/material.dart';
import 'package:pos_app/src/view/akun/akun_view.dart';
import 'package:pos_app/src/view/beranda/beranda_view.dart';
import 'package:pos_app/src/view/keranjang/keranjang_view.dart';
import 'package:pos_app/src/view/main/widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:pos_app/src/view/main/widgets/bottom_navigation_bar/custom_navigation_item.dart';
import 'package:pos_app/src/view/rekap_kas/rekap_kas_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  CustomNavigationItem currentItem = CustomNavigationItem.beranda;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: bodyForItem(currentItem),
      bottomNavigationBar: CustomBottomNavigationBar(
        onPressed: (item) => setState(() {
          currentItem = item;
        }),
      ),
    );
  }

  Widget bodyForItem(CustomNavigationItem item) {
    return switch (item) {
      CustomNavigationItem.beranda => const BerandaView(),
      CustomNavigationItem.rekapKas => const RekapKasView(),
      CustomNavigationItem.keranjang => const KeranjangView(),
      CustomNavigationItem.akun => const AkunView(),
    };
  }
}
