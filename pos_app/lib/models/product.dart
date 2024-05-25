class Product {
  Product({
    required this.imagePath,
    required this.category,
    required this.title,
    required this.description,
    required this.rp,
  });

  final String imagePath;
  final String category;
  final String title;
  final String description;
  final int rp;

  // 가변 객체가 값을 비교하도록 override

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Product &&
            runtimeType == other.runtimeType &&
            title == other.title;
  }

  @override
  int get hashCode => title.hashCode;
}

final dummyProducts = [
  Product(
    imagePath: '',
    category: 'CUTLINE',
    title: 'SP633846-0011',
    description: 'Mandarin Fade/Coral Matte - RP Optics Multilaser Red',
    rp: 1000000,
  ),
  Product(
    imagePath: '',
    category: 'CUTLINE',
    title: 'SP631054-0000',
    description: 'Fire Red Matte - RP Optics Smoke Black',
    rp: 3000000,
  ),
  Product(
    imagePath: '',
    category: 'CUTLINE',
    title: 'SP637569-0008',
    description: 'White Gloss - ImpactX Photochromic 2 Laser Purple',
    rp: 1500000,
  ),
  Product(
    imagePath: '',
    category: 'CUTLINE',
    title: 'SP637306-0000',
    description: 'Black Matte - ImpactX Photochromic 2 Black',
    rp: 2000000,
  ),
  Product(
    imagePath: '',
    category: 'CUTLINE',
    title: 'SP636849-0000',
    description: 'Pacific Blue (Matte) - RP Optics Multilaser Ice',
    rp: 2500000,
  ),
  Product(
    imagePath: '',
    category: 'CUTLINE',
    title: 'SP631004-0010',
    description: 'Bronze Fade / Black Matte - RP Optics Smoke Black',
    rp: 2300000,
  ),
];
