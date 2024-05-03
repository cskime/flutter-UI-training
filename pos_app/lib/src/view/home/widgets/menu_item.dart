import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_app/design/palette.dart';

enum Menu {
  penjualan,
  penyimpanan,
  pelanggan,
  pegawai,
  produk,
  laporan;

  String get title => switch (this) {
        Menu.penjualan => 'Penjualan',
        Menu.penyimpanan => 'Penyimpanan',
        Menu.pelanggan => 'Pelanggan',
        Menu.pegawai => 'Pegawai',
        Menu.produk => 'Produk',
        Menu.laporan => 'Laporan',
      };

  String get iconPath => switch (this) {
        Menu.penjualan => 'assets/icons/icon-penjualan.svg',
        Menu.penyimpanan => 'assets/icons/icon-penyimpanan.svg',
        Menu.pelanggan => 'assets/icons/icon-pelanggan.svg',
        Menu.pegawai => 'assets/icons/icon-pegawai.svg',
        Menu.produk => 'assets/icons/icon-produk.svg',
        Menu.laporan => 'assets/icons/icon-laporan.svg',
      };
}

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.menu});

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black.withOpacity(0.12),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            menu.iconPath,
            colorFilter: const ColorFilter.mode(
              Color(0xFF5D5FEF),
              BlendMode.srcIn,
            ),
            width: 32,
            height: 32,
          ),
          const SizedBox(height: 25),
          Text(
            menu.title,
            style: const TextStyle(
              color: Palette.text,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
