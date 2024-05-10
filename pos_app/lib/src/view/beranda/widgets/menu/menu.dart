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

  String get iconName => 'icon-${title.toLowerCase()}';
}
