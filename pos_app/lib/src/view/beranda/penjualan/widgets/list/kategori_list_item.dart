enum KategoriListItem {
  bike,
  bikeHelmets,
  rxOptical,
  run,
  outdoor,
  golf,
  waterSport,
  ppe,
  activeLifestyle,
  snowDirt;

  String get title => switch (this) {
        KategoriListItem.bike => 'BIKE',
        KategoriListItem.bikeHelmets => 'BIKE HELMETS',
        KategoriListItem.rxOptical => 'RX/OPTICAL',
        KategoriListItem.run => 'RUN',
        KategoriListItem.outdoor => 'OUTDOOR',
        KategoriListItem.golf => 'GOLF',
        KategoriListItem.waterSport => 'WATER SPORT',
        KategoriListItem.ppe => 'PPE',
        KategoriListItem.activeLifestyle => 'ACTIVE LIFESTYLE',
        KategoriListItem.snowDirt => 'SNOW/DIRT',
      };
}
