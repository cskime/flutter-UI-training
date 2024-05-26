enum LaporanItem {
  rangkuman,
  ringkasanPenjualan,
  penjualanPerProduk,
  penjualanPerKategori,
  penjualanPerMerek,
  pelanggan,
  pegawai;

  String get title => switch (this) {
        LaporanItem.rangkuman => 'Rangkuman',
        LaporanItem.ringkasanPenjualan => 'Ringkasan Penjualan',
        LaporanItem.penjualanPerProduk => 'Penjualan Per Produk',
        LaporanItem.penjualanPerKategori => 'Penjualan Per Kategori',
        LaporanItem.penjualanPerMerek => 'Penjualan Per Merek',
        LaporanItem.pelanggan => 'Pelanggan',
        LaporanItem.pegawai => 'Pegawai',
      };
}
