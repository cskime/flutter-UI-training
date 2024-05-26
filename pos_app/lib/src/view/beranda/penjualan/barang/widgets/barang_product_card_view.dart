import 'package:flutter/material.dart';
import 'package:pos_app/design/palette.dart';
import 'package:pos_app/models/product.dart';
import 'package:pos_app/src/state/products_provider.dart';
import 'package:pos_app/src/view/beranda/penjualan/barang/widgets/barang_product_counter.dart';

class BarangProductCardView extends StatelessWidget {
  const BarangProductCardView({
    super.key,
    required this.product,
    required this.width,
    required this.currentCount,
    required this.onCountChanged,
  });

  final Product product;
  final double width;
  final int currentCount;
  final void Function(int count) onCountChanged;

  @override
  Widget build(BuildContext context) {
    int currentCount =
        ProductsProvider.of(context)?.countOfProduct[product] ?? 0;
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 140,
            child: ColoredBox(color: Palette.primary),
          ),
          Padding(
            padding: const EdgeInsets.all(8).copyWith(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.category,
                  style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${product.description}\n',
                  style: const TextStyle(
                    color: Color(0xFF60626E),
                    fontSize: 8,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 10),
                Text(
                  'Rp ${product.rp}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                BarangProductCounter(
                  currentCount: currentCount,
                  onPressed: onCountChanged,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
