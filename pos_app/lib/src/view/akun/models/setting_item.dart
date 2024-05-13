enum SettingItem {
  ubahAkun,
  riwayatTransaksi,
  pengaturan,
  bantuan,
  kebijakanPribadi,
  syaratDanKetentuan,
  keluar;

  String get title => switch (this) {
        SettingItem.ubahAkun => 'Ubah Akun',
        SettingItem.riwayatTransaksi => 'Riwayat Transaksi',
        SettingItem.pengaturan => 'Pengaturan',
        SettingItem.bantuan => 'Bantuan',
        SettingItem.kebijakanPribadi => 'Kebijakan Pribadi',
        SettingItem.syaratDanKetentuan => 'Syarat Dan Ketentuan',
        SettingItem.keluar => 'Keluar'
      };

  String get iconName => switch (this) {
        SettingItem.ubahAkun => 'icon-user-square',
        SettingItem.riwayatTransaksi => 'icon-clipboard-notes',
        SettingItem.pengaturan => 'icon-setting',
        SettingItem.bantuan => 'icon-lightbulb',
        SettingItem.kebijakanPribadi => 'icon-shield',
        SettingItem.syaratDanKetentuan => 'icon-file-info',
        SettingItem.keluar => 'icon-signout'
      };
}
