enum CustomNavigationItem {
  beranda,
  rekapKas,
  keranjang,
  akun;

  String get title => switch (this) {
        CustomNavigationItem.beranda => 'Beranda',
        CustomNavigationItem.rekapKas => 'Rekap Kas',
        CustomNavigationItem.keranjang => 'Keranjang',
        CustomNavigationItem.akun => 'Akun',
      };

  String iconName({bool isSelected = false}) {
    var iconName = switch (this) {
      CustomNavigationItem.beranda => 'icon-beranda',
      CustomNavigationItem.rekapKas => 'icon-rekap-kas',
      CustomNavigationItem.keranjang => 'icon-keranjang',
      CustomNavigationItem.akun => 'icon-akun',
    };
    if (isSelected) {
      iconName += '-selected';
    }
    return iconName;
  }
}
